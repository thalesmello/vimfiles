nnoremap <c-p> :<c-u>FZF<CR>
vnoremap <c-p> :<c-u>FZF<CR>

let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <c-f> :Ag<space>

nnoremap <silent> <leader>a :<c-u>Ag <c-r><c-w><cr>
vnoremap <silent> <leader>a :<c-u>call fzf_config#visual_ag()<cr>
nnoremap <silent> <leader>li :BLines<cr>
nnoremap <silent> <leader>hp :Helptags<cr>
nnoremap <silent> <leader>cm :Commands<cr>
nnoremap <silent> <leader>hi :History:<cr>
nnoremap <silent> <leader>ft :Filetypes<cr>

