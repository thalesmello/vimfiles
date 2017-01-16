nnoremap <silent> <leader>tn :execute  "tabedit % \| call setpos('.', " . string(getpos('.')) . ")"<cr>
vnoremap <silent> <leader>tn y:tabnew<cr>P
nnoremap <leader>tc :tabclose<cr>
nnoremap [t :tabprevious<cr>
nnoremap ]t :tabnext<cr>

" Reopen last closed window
nnoremap <silent> <leader>T :LastWindow<cr>

" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d :q<cr>
nnoremap zf mzzM`zzvzz

" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
inoremap <C-C> <esc>
vnoremap <C-C> <esc>
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
noremap Q gq
nnoremap K <nop>
nnoremap & <Nop>
vnoremap <CR> "+y
" The snippet below tries to intelligently split a string and append a concat
" operator in it
nnoremap <leader><cr> mz?\v(".*"\|'.*')<cr>"qyl`zi<c-r>q +<cr><c-r>q<esc>
nnoremap <leader>yy gv"+y
vnoremap <leader>yy "+y
vnoremap @ :normal @
vnoremap <c-c> "+y
nnoremap <leader><leader><leader> <c-^>
nnoremap <leader>o `>
nnoremap <leader>] `]
nnoremap <leader>ss :w<cr>
nnoremap <leader>saa ggVG
nnoremap <leader>saq ?\v('''\|""")<CR>vw//e<CR>
nnoremap <leader>siq ?\v('''\|""")<CR>wv//e<CR>ge
nnoremap <leader>sl $v^
nmap <leader>* *N
vmap <leader>* *N
vmap <leader>c* *Ncgn
nmap c* *Ncgn
nnoremap Y y$
nnoremap <leader>fw :FixWhitespace<cr>
vmap <leader>yj Jgvyu
noremap <c-e> 2<c-e>
noremap <c-y> 2<c-y>
nnoremap <leader>; A;<esc>
nnoremap <leader><bs> $x<esc>
nnoremap <leader>= <c-w>=
nnoremap <leader>+ <c-w>\|<c-w>_
nnoremap <leader>\| <c-w>\|
nnoremap <leader>cd :lcd %:p:h<cr>
nnoremap <leader>cr :ProjectRootCD<cr>
nnoremap <S-ScrollWheelUp>   <ScrollWheelLeft>
nnoremap <S-2-ScrollWheelUp> <2-ScrollWheelLeft>
nnoremap <S-3-ScrollWheelUp> <3-ScrollWheelLeft>
nnoremap <S-4-ScrollWheelUp> <4-ScrollWheelLeft>
nnoremap <S-ScrollWheelDown>     <ScrollWheelRight>
nnoremap <S-2-ScrollWheelDown>   <2-ScrollWheelRight>
nnoremap <S-3-ScrollWheelDown>   <3-ScrollWheelRight>
nnoremap <S-4-ScrollWheelDown>   <4-ScrollWheelRight>
nnoremap <silent> <leader>sf :if &ft == 'vim' <bar> source % <bar> endif<cr>
vnoremap _ <esc>`<jV`>k0
vnoremap - <esc>`<jV`>k0
vnoremap + <esc>`<kV`>j0
nnoremap <leader>V vg_
nnoremap  gs  :%s//g<LEFT><LEFT>
vnoremap  gs  :s//g<LEFT><LEFT>
