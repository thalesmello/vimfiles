if !exists('g:inline_edit_patterns')
  let g:inline_edit_patterns = []
endif

call add(g:inline_edit_patterns, {
      \ 'main_filetype':     'python',
      \ 'sub_filetype':      'sql',
      \ 'indent_adjustment': 1,
      \ 'start':             '\("""\|''''''\)',
      \ 'end':               '\s*\("""\|''''''\)',
      \ })

nmap <silent> <leader>ie :<c-u>:InlineEdit<cr>
vmap <silent> <leader>ie :InlineEdit<cr>
