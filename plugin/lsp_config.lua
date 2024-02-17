-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
local cmp = require('cmp')
local cmp_lsp = require('cmp_nvim_lsp')
local snippy = require('snippy')

snippy.setup({})

vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[g', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']g', '<cmd>lua vim.diagnostic.goto_next()<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }
        local client = vim.lsp.get_client_by_id(event.data.client_id)

        -- these will be buffer-local keybindings
        -- because they only work if you have an active language server
        if client == nil then
            return
        end

        local capabilities = client.server_capabilities

        local  mapCapability = function(cond, mode, key, cmd)
            if cond then
                vim.keymap.set(mode, key, cmd, opts)
            end
        end

        mapCapability(capabilities.hoverProvider, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
        mapCapability(capabilities.definitionProvider, 'n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<cr>')
        mapCapability(capabilities.declarationProvider, 'n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<cr>')
        mapCapability(capabilities.implementationProvider, 'n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<cr>')
        mapCapability(capabilities.typeDefinitionProvider, 'n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
        mapCapability(capabilities.referencesProvider, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
        mapCapability(capabilities.signatureHelpProvider, 'n', 'gK', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
        mapCapability(capabilities.renameProvider, 'n', 'gr', '<cmd>lua vim.lsp.buf.rename()<cr>')
        mapCapability(capabilities.documentFormattingProvider, { 'n', 'x' }, 'g%', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
        mapCapability(capabilities.codeActionProvider, 'n', '<leader>.', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    end
})

local lsp_capabilities = cmp_lsp.default_capabilities()
local lspconfig = require('lspconfig')

-- local configs = require 'lspconfig.configs'
-- local lspconfig_util = require("lspconfig.util")

-- -- This is a Tentative DBT configuration.
-- -- Looks promising, but doesn't work very well just yet so it's commented out,
-- -- I'm keeping it around for when I have time to fix it.
-- -- Known bugs:
-- -- - tries to find a literal '/target' folder, but file doesn't exist. Should find the project's target folder instead.
-- -- - thinks a source doesn't exist as a table, when in fact it's a view
-- if not configs.dbt_ls then
--     configs.dbt_ls = {
--         default_config = {
--             -- capabilities = lsp_capabilities,
--             -- Install with: npm install -g @fivetrandevelopers/dbt-language-server@0.33.2
--             cmd = { 'dbt-language-server', '--stdio', },
--             -- cmd = { 'npm', 'exec', '@fivetrandevelopers/dbt-language-server@0.33.1', '--', '--stdio', },
--             root_dir = lspconfig_util.root_pattern("dbt_project.yml", "dbt_project.yaml"),
--             filetypes = { "sql", "yml" },
--             name = 'dbt_ls',
--         },
--     }
-- end

lspconfig.dbt_ls.setup {
    init_options = {
        pythonInfo = {
            path = "/Users/thales.mello/.local/pipx/venvs/dbt-core/bin/python3",
        },
        lspMode = "dbtProject",
        enableSnowflakeSyntaxCheck = false,
    },
}


local default_setup = function(server)
    lspconfig[server].setup({
        capabilities = lsp_capabilities,
    })
end

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        default_setup,
        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                capabilities = lsp_capabilities,
                settings = {
                    Lua = {
                        runtime = {
                            version = 'LuaJIT'
                        },
                        diagnostics = {
                            globals = { 'vim' },
                        },
                        workspace = {
                            library = {
                                vim.env.VIMRUNTIME,
                            }
                        }
                    }
                }
            })
        end
    },
})

cmp.setup({
    sources = {
        { name = 'nvim_lsp' },
        { name = 'snippy' },
        { name = 'buffer' },
    },

    mapping = cmp.mapping.preset.insert({
        -- Enter key confirms completion item
        -- ['<tab>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl + space triggers completion menu
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif snippy.can_expand_or_advance() then
                snippy.expand_or_advance()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_prev_item()
            elseif snippy.can_jump(-1) then
                snippy.previous()
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<backspace>', true, false, true), vim.fn.mode(),
                    true)
            end
        end, { "i", "s" }),

        ['<cr>'] = cmp.mapping(function(fallback)
            if (not cmp.visible()) or (cmp.visible() and cmp.get_selected_entry() == nil) then
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<c-g>u', true, false, true), vim.fn.mode(), false)
                fallback()
            else
                cmp.confirm({ select = false })
            end
        end, { "i", "s" })
    }),


    snippet = {
        expand = function(args)
            snippy.expand_snippet(args.body)
        end,
    },
})


-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
    }
})

-- `:` cmdline setup.
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' },
    })
})

vim.keymap.set({ 'i', 's' }, '<c-l>', function()
    if snippy.can_expand_or_advance() then
        return '<plug>(snippy-expand-or-advance)'
    else
        return '<c-l>'
    end
end, { expr = true })

vim.keymap.set({ 'i', 's' }, '<c-h>', function()
    if snippy.can_jump(-1) then
        return '<plug>(snippy-previous)'
    else
        return '<c-h>'
    end
end, { expr = true })

vim.keymap.set('x', '<Tab>', function()
    -- '<plug>(snippy-cut-text)'
    snippy.cut_text(vim.fn.mode(), true)
end)
-- map( 'n', 'g<Tab>', '<plug>(snippy-cut-text)')
