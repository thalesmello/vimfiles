" OriginalAuthor: Pedro Franceschi <pedrohfranceschi@gmail.com>
" ModifiedVersion: Thales Mello <thalesmello@gmail.com>
" Source: http://github.com/pedrofranceschi/vimfiles

" ##### Plug setup  {{{
set nocompatible

" Install Plug if not already loaded
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()

" "}}}
" ##### Plugins  {{{
Plug 'tpope/vim-sensible'
" Plugin to load tasks asynchronously
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
" Theme of this vimfiles
Plug 'sjl/badwolf'
" Useful statusbar in your vim
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'b4winckler/vim-objc'
" Comment toggling: use `gc` to toggle comments in visual mode
Plug 'tomtom/tcomment_vim'
" Git bindings for VIM
Plug 'tpope/vim-fugitive'
" Surround utils for vim
Plug 'tpope/vim-surround'
" Automatic closing of brackets
Plug 'Raimondi/delimitMate'
" Makes vim understand markdown folding
Plug 'nelstrom/vim-markdown-folding'
" Makes the repeat command `.` work in more cases
Plug 'tpope/vim-repeat'
" Vim support for Js handlebars
Plug 'nono/vim-handlebars'
Plug 'nathanaelkane/vim-indent-guides'
" Javascript support for vim
Plug 'jelera/vim-javascript-syntax', { 'for': ['javascript'] }
Plug 'milkypostman/vim-togglelist'
" Relative line number
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" File explorer for VIM. <leader>ft to activate
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
" Golang support for vim
Plug 'jnwhiteh/vim-golang'
" Make jk behave as jumps in Vim
Plug 'teranex/jk-jumps.vim'
Plug 'tpope/vim-dispatch'
" Expand html easily: div > 3*li then Ctrl+e in an html file
Plug 'rstacruz/sparkup'
" Use the Molokay theme in Vim
Plug 'tomasr/molokai'
" Puppet support for Vim
Plug 'rodjek/vim-puppet'
" Elixir support for Vim
Plug 'elixir-lang/vim-elixir'
" Ruby support for Vim
Plug 'vim-ruby/vim-ruby'
" Automatically recognize indentation
Plug 'thalesmello/vim-sleuth'

" }}}
" ##### Load local Plugins  {{{

" The following loads a local bundles file, in case
" you wish to install local plugins
Plug 'terryma/vim-multiple-cursors'
Plug 'thalesmello/vim-tmux-navigator'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-endwise'
Plug 'ludovicchabant/vim-gutentags'
Plug 'easymotion/vim-easymotion'
Plug 'szw/vim-g'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'bronson/vim-visual-star-search'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thalesmello/vim-indent-object'
Plug 'thalesmello/vimux'
Plug 'embear/vim-localvimrc'
Plug 'thalesmello/vim-unimpaired'
Plug 'Chiel92/vim-autoformat'
Plug 'neomake/neomake'
Plug 'simnalamburt/vim-mundo'
Plug 'simeji/winresizer'
Plug 'godlygeek/tabular'
Plug 'wesQ3/vim-windowswap'
Plug 'thalesmello/lazy.ultisnips' | Plug 'SirVer/ultisnips', { 'on': ['UltiSnipsEdit'] }
Plug 'honza/vim-snippets'
Plug 'kana/vim-textobj-user'
      \ | Plug 'rhysd/vim-textobj-ruby'
      \ | Plug 'kana/vim-textobj-function'
      \ | Plug 'bps/vim-textobj-python'
      \ | Plug 'glts/vim-textobj-comment'
      \ | Plug 'kana/vim-textobj-line'
      \ | Plug 'Julian/vim-textobj-variable-segment'
      \ | Plug 'kana/vim-textobj-entire'
      \ | Plug 'poetic/vim-textobj-javascript'
      \ | Plug 'thinca/vim-textobj-function-javascript'
      \ | Plug 'coderifous/textobj-word-column.vim'
      \ | Plug 'ryanoasis/vim-devicons'
      \ | Plug 'sgur/vim-textobj-parameter'
      \ | Plug 'saihoooooooo/vim-textobj-space'
      \ | Plug 'glts/vim-textobj-indblock'
      \ | Plug 'kana/vim-textobj-indent'
      \ | Plug 'rhysd/vim-textobj-lastinserted'
      \ | Plug 'thalesmello/vim-textobj-methodcall'
      \ | Plug 'thalesmello/vim-textobj-bracketchunk'
      \ | Plug 'rhysd/vim-textobj-conflict'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Shougo/unite.vim'
      \ | Plug 'thalesmello/config.neoyank.vim' | Plug 'Shougo/neoyank.vim'
      \ | Plug 'Shougo/unite-help'
      \ | Plug 'thinca/vim-unite-history'
      \ | Plug 'thalesmello/unite-cmdmatch'
      \ | Plug 'Shougo/unite-outline'
      \ | Plug 'osyo-manga/unite-quickfix'
      \ | Plug 'Shougo/neomru.vim'
      \ | Plug 'thalesmello/config-unite-outline'
Plug 'gioele/vim-autoswap'
Plug 'junegunn/fzf'
Plug 'tpope/vim-speeddating'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/vim-cursorword'
Plug 'osyo-manga/vim-over'
Plug 'zirrostig/vim-schlepp'
Plug 'thalesmello/rougherexp'
Plug 'wincent/terminus'
Plug 'haya14busa/incsearch.vim'
Plug 'davidhalter/jedi'
Plug 'dbakker/vim-projectroot'
Plug 'Shougo/deoplete.nvim',                      Cond(has('nvim'))
      \ | Plug 'zchee/deoplete-jedi',             Cond(has('nvim'))
      \ | Plug 'mhartington/deoplete-typescript', Cond(has('nvim'))
      \ | Plug 'Shougo/echodoc.vim',              Cond(has('nvim'))
      \ | Plug 'thalesmello/webcomplete.vim',     Cond(has('nvim'))
Plug 'thalesmello/pulsecursor.vim'
Plug 'thalesmello/tabmessage.vim'
Plug 'thalesmello/persistent.vim'
Plug 'thalesmello/pagarme-refactor.vim'
Plug 'thalesmello/config.loupe' | Plug 'wincent/loupe'
Plug 'dietsche/vim-lastplace'
Plug 'EinfachToll/DidYouMean'

" TODO: Check
" github-complete.vim
" committia.vim
" make outline use ctags for JavaScript

" }}}
" ##### Finish loading Plug  {{{
call plug#end()

function! PendingPlugInstall()
  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
    PlugInstall

    if has('nvim')
      UpdateRemotePlugins
    endif
  endif
endfunction

autocmd VimEnter * call PendingPlugInstall()

" }}}
" ##### Basic options  {{{
" Display incomplete commands.
set showcmd

" Handle multiple buffers better.
set hidden

" Complete files like a shell.
set wildmode=list:longest,full

" No extra spaces when joining lines
set nojoinspaces

" Case-insensitive searching.
set ignorecase

" Show line numbers.
set number

" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
autocmd FileType * setlocal tabstop=4
" And again, related.
autocmd FileType * setlocal shiftwidth=4

" Files open expanded
" Use decent folding
set foldlevelstart=50
augroup set_fold_method
  autocmd!
  autocmd FileType * setlocal foldmethod=indent
  autocmd FileType vim setlocal foldlevel=0
  autocmd FileType vim setlocal foldmethod=marker
augroup end

" Always diff using vertical mode
set diffopt+=vertical

" Allows the mouse to be used
set mouse=a

" Sets the colorscheme for terminal sessions too.
colorscheme molokai

" Leader = ,
let mapleader = "\<space>"
" }}}
" ##### General mappings  {{{
" ##### Tabs {{{
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>te :tabedit
nnoremap <leader>tc :tabclose<cr>
nnoremap [t :tabprevious<cr>
nnoremap ]t :tabnext<cr>
" }}}

" Emacs bindings in command-line mode
cnoremap <C-A> <home>
cnoremap <C-E> <end>
" }}}
" ##### Split windows {{{
" Move around easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d :q<cr>
" }}}
" ##### Folding {{{
" Toggles folding with space
" Plugin extractable
function! MyToggleFold()
  if foldclosed(line('.')) >= 0
    silent! normal zv
  else
    silent! normal za
  endif
endfunction

nnoremap <silent> <s-tab> :<c-U>call MyToggleFold()<cr>
nnoremap <silent> <leader><tab> :<c-U>call MyToggleFold()<cr>
if !has('gui')
  function! JumpForwardOrToggleFold()
    let oldpos = getpos('.')
    execute "normal! 1\<c-i>"
    let newpos = getpos('.')
    if newpos == oldpos
      call MyToggleFold()
    endif
  endf
  nnoremap <silent> <tab> :<c-u>call JumpForwardOrToggleFold()<cr>
endif
" Open all folds
nnoremap <leader>fo zR
" Close all folds
nmap <leader>fc zM
" Close all folds except the current one
nnoremap zf mzzM`zzvzz
" }}}
" ##### Misc {{{
" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
inoremap <C-C> <esc>
vnoremap <C-C> <esc>

" }}}
" ##### Plugin settings  {{{
" ##### Fugitive  {{{
" (thanks to Steve Losh's vimrc)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push
" }}}
" ##### NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
" }}}
" ##### Number toggle  {{{
let g:NumberToggleTrigger="<leader>ll"
"}}}
" ##### togglelist {{{
let g:toggle_list_copen_command="Copen"
" }}}
" ##### Ack motions {{{
" (from Steve Losh's vimrc)
" Motions to Ack for things.  Works with pretty much everything, including:
"
"   w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
"
" Awesome.
"
" Note: If the text covered by a motion contains a newline it won't work.  Ack
" searches line-by-line.

" nnoremap <silent> <leader>a :set opfunc=<SID>AckMotion<CR>g@
" xnoremap <silent> <leader>a :<C-U>call <SID>AckMotion(visualmode())<CR>
"
" function! s:CopyMotionForType(type)
"     if a:type ==# 'v'
"         silent execute "normal! `<" . a:type . "`>y"
"     elseif a:type ==# 'char'
"         silent execute "normal! `[v`]y"
"     endif
" endfunction
"
" function! s:AckMotion(type) abort
"     let reg_save = @@
"
"     call s:CopyMotionForType(a:type)
"
"     execute "normal! :Ack! --literal " . shellescape(@@) . "\<cr>"
"
"     let @@ = reg_save
" endfunction
" }}}
" }}}
" ##### Filetype-specific  {{{
" ##### Ruby  {{{
" Specific shiftwidth for ruby files
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal tabstop=2
" Convert tabs to spaces in Ruby files
autocmd FileType ruby setlocal expandtab

" But not for erb files...
autocmd FileType eruby setlocal shiftwidth=4
autocmd FileType eruby setlocal tabstop=4

" }}}
" ##### Puppet  {{{
" Specific shiftwidth for puppet files
autocmd BufRead,BufNewFile *.pp setlocal filetype=puppet
autocmd BufRead,BufNewFile Puppetfile setlocal filetype=ruby

" And custom tab sizes too
autocmd FileType puppet setlocal shiftwidth=2
autocmd FileType puppet setlocal tabstop=2
" }}}
" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md setlocal filetype=markdown

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md setlocal wrap

autocmd BufEnter *.md colorscheme badwolf
" }}}
" ##### JavaScript  {{{
" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs setlocal filetype=html
" }}}
" ##### XML {{{
" Automatically format XML files
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G
" }}}
" ##### SQL {{{
" ##### LookML {{{
" Sets YAML syntax for *.lookml files.
autocmd BufRead,BufNewFile *.lookml setlocal filetype=yaml
" }}}
" ##### Reload Vim Sleuth {{{
augroup sleuth
  autocmd!
  autocmd FileType * VimSleuthReload
augroup END
" }}}
" }}}
" }}}
" # Local settings {{{
let maplocalleader = "'"
set cursorline
set listchars=tab:▸\ ,eol:¬
set lazyredraw
set completeopt-=preview
set linebreak
set noshowmode
set updatetime=500
set sidescroll=2
set showbreak=↪

if has('nvim')
    set termguicolors
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
endif

" }}}"
" # Mappings  {{{
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
nnoremap K <nop>
nnoremap & <Nop>
vnoremap <CR> "+y
nnoremap <leader><cr> mz?\v(".*"\|'.*')<cr>"qyl`zi<c-r>q +<cr><c-r>q<esc>
nnoremap <leader>yy gv"+y
vnoremap <leader>yy "+y
nnoremap <leader>pp "+p
vnoremap <leader>pp "+p
nnoremap <leader>PP "+P
vnoremap <leader>PP "+P
vnoremap <c-c> "+y
nnoremap <leader><leader> <c-^>
nnoremap <leader>o `>
nnoremap <leader>ss :w<cr>
nnoremap <leader>saa ggVG
nnoremap <leader>sy :setfiletype<space>
nnoremap <leader>saq ?\v('''\|""")<CR>vw//e<CR>
nnoremap <leader>siq ?\v('''\|""")<CR>wv//e<CR>ge
nnoremap <leader>sl $v^
nmap <leader>* *N
vmap <leader>* *N
vmap <leader>c* *Ncgn
nmap <leader>c* *Ncgn
nnoremap Y y$
nnoremap <leader>fw :FixWhitespace<cr>
vmap <leader>yj Jgvyu
nmap <leader>tn :tabnew<cr>
vmap <leader>tn y:tabnew<cr>p
nmap <leader>bn :vnew<cr>
vmap <leader>bn y:vnew<cr>p
nmap <leader>bc :bw<cr>
noremap <c-e> 2<c-e>
noremap <c-y> 2<c-y>
nnoremap <leader>; A;<esc>
nnoremap <leader><bs> $x<esc>
nnoremap <leader>= <c-w>=
nnoremap <leader>+ <c-w>\|<c-w>_
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
nnoremap <silent> <leader>q :pclose<cr>:cclose<cr>:lclose<cr>:UniteClose<cr>
nnoremap <leader>sf :source %<cr>

" "}}}
" # Vim over  {{{
" Lazy loadable
nnoremap  gs  :OverCommandLine<cr>%s//g<LEFT><LEFT>
vnoremap  gs  :OverCommandLine<cr>s//g<LEFT><LEFT>
nnoremap  <leader>: :OverCommandLine<cr>
let g:over_enable_auto_nohlsearch = 0

" "}}}
" # Vim Multiple Cursors  {{{
" Lazyloadable if I disable default mappings
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_exit_from_visual_mode = 0
let g:deoplete#auto_complete_delay = 100

function! Multiple_cursors_before()
    call DeopleteMultipleCursorsSwitch(1)
endfunction

function! Multiple_cursors_after()
    call DeopleteMultipleCursorsSwitch(0)
endfunction

noremap g<c-n> :MultipleCursorsFind <c-r>/<cr>

highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
highlight link multiple_cursors_visual Visual

" "}}}
" # Easymotion  {{{
" Lazy loadable
let g:EasyMotion_smartcase = 1

map ; <Plug>(easymotion-prefix)
nmap f <Plug>(easymotion-bd-f)
xmap f <Plug>(easymotion-bd-f)
omap f <Plug>(easymotion-bd-f)
nmap F <Plug>(easymotion-overwin-f2)
xmap F <Plug>(easymotion-overwin-f2)
omap F <Plug>(easymotion-overwin-f2)

" "}}}
" # Vim Tmux Navigator  {{{
" Lazy loadable
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-H> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-J> :TmuxNavigateDown<cr>
nnoremap <silent> <C-K> :TmuxNavigateUp<cr>
nnoremap <silent> <C-L> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" "}}}
" # Semantic highlighting  {{{
" Lazy loadable
let g:semanticTermColors = [28,1,2,3,87,5,6,7,81,9,10,34,11,13,14,15,165,154,49,139]
nnoremap <Leader>sh :SemanticHighlightToggle<cr>

" "}}}
" # Pipe visual to shell {{{
" Plugin extractable
" By Xolox @ http://stackoverflow.com/questions/1533565/how-to-get-visually-selected-text-in-vimscript
function! s:get_visual_selection()
    let [lnum1, col1] = getpos("'<")[1:2]
    let [lnum2, col2] = getpos("'>")[1:2]
    let lines = getline(lnum1, lnum2)
    let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][col1 - 1:]
    return join(lines, "\n")
endfunction

function! s:Chomp(string)
    return substitute(a:string, '\n\+$', '', '')
endfunction

function! s:visual_command() range
    let text = s:get_visual_selection()
    let cmd = input('Pipe: ', '', 'shellcmd')
    let @v = s:Chomp(system(cmd, text))
    execute 'normal! gv"vp'
endfunction

command! -range VisualCommand <line1>,<line2>call s:visual_command()
vnoremap <leader>\| :VisualCommand<CR>

" }}} "
" # Airline  {{{
" Plugin extractable configuration?
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline_inactive_collapse = 1
let g:airline#extensions#branch#displayed_head_limit = 15
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#enabled = 1

let g:unite_outline_closest_tag = ""
function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = airline#section#create(['file', ' ', 'readonly'])
    let g:airline_section_c = airline#section#create(['%{g:unite_outline_closest_tag}'])
    let g:airline_section_x = airline#section#create([])
    let g:airline_section_y = airline#section#create(['%<', 'branch'])
    let g:airline_section_z = airline#section#create(['%p%% ', '%{g:airline_symbols.linenr}%#__accent_bold#%l%#__restore__#:%v'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

" "}}}
" # Gutentags  {{{
let g:gutentags_exclude = ['node_modules', '.git']

" "}}}
" # Deoplete  {{{
" Plugin extractable
let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.ruby = ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']
let g:deoplete#omni#input_patterns.javascript = '[^. *\t]\.\w*'
let g:deoplete#omni#input_patterns.vimwiki = '\[\[.*'

function! DeopleteMultipleCursorsSwitch(before)
    if a:before
        let s:old_disable_deoplete = g:deoplete#disable_auto_complete
        let g:deoplete#disable_auto_complete = 1
    else
        let g:deoplete#disable_auto_complete = s:old_disable_deoplete
    endif
endfunction

let g:deoplete#enable_at_startup = 1
let g:echodoc_enable_at_startup = 1

function! ToggleEchoDocFunc()
    if echodoc#is_enabled()
        call echodoc#disable()
    else
        call echodoc#enable()
    endif
endfunction

command! EchoDocToggle call ToggleEchoDocFunc()
nnoremap <leader>ed :<c-u>EchoDocToggle<cr>

inoremap <up> <c-p>
inoremap <down> <c-n>
inoremap <expr><C-l> deoplete#refresh()

" "}}}
" # UltiSnips  {{{
" Create command to load ultisnips and call it on vimenter
" Plugin extractable configuration
let g:ulti_expand_res = 0
let g:ulti_jump_forwards_res = 0
function! JumpOrExpandSnippet()
    call UltiSnips#JumpForwards()
    if !g:ulti_jump_forwards_res
        call UltiSnips#ExpandSnippet()
    endif
    return ''
endfunction

function! MyExpandSnippet()
    call UltiSnips#ExpandSnippet()
    return ''
endf

let g:UltiSnipsEditSplit           = "vertical"
xnoremap <silent> <tab> :call UltiSnips#SaveLastVisualSelection()<CR>gvs
inoremap <silent> <c-j> <c-r>=JumpOrExpandSnippet()<cr>
imap <silent> <Tab> <c-r>=MyExpandSnippet()<cr>[should]jump
inoremap <silent><expr> [should]jump g:ulti_expand_res ? '' : (pumvisible() ? "\<c-n>" : "\<tab>")
let g:UltiSnipsExpandTrigger       = "<c-t><c-t><c-t>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsSnippetsDir         = '~/.snips'
let g:UltiSnipsSnippetDirectories  = ["UltiSnips", $HOME . "/.snips"]
inoremap <c-x><c-k> <c-x><c-k>
nmap <leader>esp :UltiSnipsEdit<cr>

" "}}}
" # ToggleList  {{{
let g:toggle_list_no_mappings = 1

" "}}}
" # NerdTREE  {{{
let g:NERDTreeIgnore = ['\.pyc$']
nnoremap <leader>ff :NERDTreeFind<cr>
let g:NERDTreeQuitOnOpen = 1

" "}}}
" # Ruby  {{{
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_use_bundler = 1
let g:rubycomplete_load_gemfile = 1

" "}}}
" # Vimux  {{{
" Plugins extractable configuration
" Prompt for a command to run
map <silent> <localleader>vp :VimuxPromptCommand<CR>
map <silent> <localleader>vl :call VimuxSendKeys('up Enter')<CR>
map <silent> <localleader>vi :VimuxInspectRunner<CR>
map <silent> <localleader>vq :VimuxCloseRunner<CR>
map <silent> <localleader>vx :VimuxInterruptRunner<CR>
map <silent> <localleader>vz :call VimuxZoomRunner()<CR>
map <silent> <localleader>vo :call VimuxOpenRunner()<CR>

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <silent> <localleader>vs :call VimuxSlime()<CR>`>j^
vmap <silent> <localleader>vj Jgv:call VimuxSlime()<CR>u`>j^
vmap <silent> <localleader>vyp Jgv:call VimuxCopyPostres()<CR>u`>j^
vmap <silent> <localleader>v; Jgv:call VimuxSlimeSemicolon()<CR>u`>j^
vmap <silent> <localleader><CR> <localleader>vs

" Select current paragraph and send it to tmux
nmap <silent> <localleader>vs vip<localleader>vs
nmap <silent> <localleader>vj vip<localleader>vj
nmap <silent> <localleader>vyp vip<localleader>vyp
nmap <silent> <localleader>v; vip<localleader>v;
nmap <silent> <localleader><CR> V<localleader>vs
nmap <silent> <localleader>vaa ggVG<localleader>vs
nmap <silent> <localleader>vaj ggVG<localleader>vj

" Execute current file in the interpreter
nnoremap <silent> <localleader>vf :w<CR>:call VimuxRunCommand(GetExecuteCommand())<CR>
nnoremap <silent> <localleader>vw :call VimuxRunCommand(GetNodemonCommand())<CR>
nmap <silent> <localleader>vr <localleader>vq:call VimuxRunCommand(GetReplCommand())<CR>
nnoremap <silent> <localleader>vtp :call VimuxRunCommand('exec-notify ./script/test ' . expand('%'))<cr>

function! VimuxSlime() range
   call VimuxRunCommand(s:get_visual_selection())
endfunction

function! VimuxSlimeLineBreak() range
   call VimuxSlime()
   call VimuxSendKeys('Enter')
endfunction

function! VimuxSlimeSemicolon() range
   call VimuxRunCommand(s:get_visual_selection() . '\;')
endfunction

function! VimuxCopyPostres() range
   call VimuxRunCommand('\COPY (' . s:get_visual_selection() . ") TO PROGRAM 'pbcopy' DELIMITER e'\\t' CSV HEADER\;")
endfunction

function! GetExecuteCommand()
   let filetype_to_command = {
            \   'javascript': 'node',
            \   'coffee': 'coffee',
            \   'python': 'python',
            \   'html': 'open',
            \   'ruby': 'ruby',
            \   'sh': 'sh',
            \   'bash': 'bash'
            \ }
   let cmd = get(filetype_to_command, &filetype, &filetype)
   return cmd . " " . expand("%")
endfunction

function! GetNodemonCommand()
   let filetype_to_extension = {
            \   'javascript': 'js',
            \   'coffee': 'coffee',
            \   'python': 'py',
            \   'ruby': 'rb'
            \ }
   let extension = get(filetype_to_extension, &filetype, &filetype)
   let cmd = GetExecuteCommand()
   return  'nodemon -L -e "' . extension . '" -x "' . cmd . '"'
endfunction

function! GetReplCommand()
   let filetype_to_repl = {
            \   'javascript': 'node',
            \   'ruby': 'rbenv exec pry',
            \   'sql': 'pagarme_postgres'
            \ }
   let repl_bin = get(filetype_to_repl, &filetype, &filetype)
   echo repl_bin
   return  repl_bin
endfunction

" Python specific shortcuts
augroup python_vimux_shortuts
   autocmd!
   autocmd FileType python vmap <buffer> <localleader>vs :call VimuxSlimeLineBreak()<CR>`>j^
   autocmd FileType python nmap <localleader><CR> V:call VimuxSlime()<CR>`>j^
augroup END

" "}}}
" # Localvimrc  {{{
let g:localvimrc_persistent = 1
let g:avoid_standard_js_autowriter = 1
let g:localvimrc_event = ['VimEnter']

" "}}}
" # Autoformat  {{{
" Lazy configurable
noremap <leader>sb :Autoformat<cr>
let g:formatdef_sqlformat = '"sqlformat -k upper -r --indent_width=4 -"'
let g:formatdef_rubocop = '"rubocop --auto-correct " . expand("%") . " -o /dev/null || cat " . expand("%")'
let g:formatdef_standardjs = '"standard-format -"'
let g:formatters_sql = ['sqlformat']
let g:formatters_ruby = ['rubocop']

" "}}}
" # GUndo  {{{
" Lazy configurable
nnoremap <leader>gu :MundoToggle<CR>

" "}}}
" # Winresizer  {{{
" Plugin extractable configuration
let g:winresizer_start_key = '<leader>wr'
let g:winresizer_keycode_left = 72
let g:winresizer_keycode_right = 76
let g:winresizer_keycode_down = 74
let g:winresizer_keycode_up = 75
nmap <leader>H <leader>wrH
nmap <leader>J <leader>wrJ
nmap <leader>K <leader>wrK
nmap <leader>L <leader>wrL

" "}}}
" # Tabularize  {{{
noremap <leader>ta :Tabularize /
noremap <leader>t/ :Tabularize /<c-r>//l1l0l0<cr>

" "}}}
" # Vim Signify  {{{
let g:signify_update_on_focusgained = 1
let g:signify_update_on_bufenter = 1

omap ih <plug>(signify-motion-inner-pending)
xmap ih <plug>(signify-motion-inner-visual)
omap ah <plug>(signify-motion-outer-pending)
xmap ah <plug>(signify-motion-outer-visual)

" "}}}
" # Textobj User  {{{
" Plugin extractable configuration? study possibility
call textobj#user#map('python', {
      \   'class': {
      \     'select-a': 'aP',
      \     'select-i': 'iP',
      \   },
      \ })
let g:textobj_python_no_default_key_mappings = 1

call textobj#user#map('indent', { '-': { 'select-a': 'ai', 'select-i': 'ii' } })
let g:textobj_indent_no_default_key_mappings = 1
nnoremap <leader>saq ?\v('''\|""")<CR>vw//e<CR>
nnoremap <leader>siq ?\v('''\|""")<CR>wv//e<CR>ge

" "}}}
" # Textobj column  {{{
" Plugin extractable configuration
let g:skip_default_textobj_word_column_mappings = 1
xnoremap <silent> ak :<C-u>call TextObjWordBasedColumn("aw")<cr>
xnoremap <silent> aK :<C-u>call TextObjWordBasedColumn("aW")<cr>
xnoremap <silent> ik :<C-u>call TextObjWordBasedColumn("iw")<cr>
xnoremap <silent> iK :<C-u>call TextObjWordBasedColumn("iW")<cr>
onoremap <silent> ak :call TextObjWordBasedColumn("aw")<cr>
onoremap <silent> aK :call TextObjWordBasedColumn("aW")<cr>
onoremap <silent> ik :call TextObjWordBasedColumn("iw")<cr>
onoremap <silent> iK :call TextObjWordBasedColumn("iW")<cr>

" "}}}
" # Tcommenter  {{{
let g:tcommentTextObjectInlineComment = ''

" "}}}
" # FZF  {{{
nnoremap <c-p> :<c-u>FZF<CR>
vnoremap <c-p> :<c-u>FZF<CR>

" "}}}
" # Unite.vim {{{
" Plugin extractable configuration
" Set default matcher options
" Lazy loadable?
" # Unite buffer options {{{
" Plugn extractable
call unite#custom#source('grep, outline', 'matchers', ['matcher_fuzzy'])
call unite#custom#source('grep', 'sorters', 'sorter_rank')
call unite#custom#source('location_list, quickfix', 'sorters', 'sorter_nothing')
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#profile('default', 'context', {
    \   'start_insert': 0,
    \   'winheight': 15,
    \   'direction': 'topleft',
    \ })

let g:unite_quickfix_is_multiline=0
call unite#custom_source('quickfix', 'converters', 'converter_quickfix_highlight')
call unite#custom_source('location_list', 'converters', 'converter_quickfix_highlight')

augroup unite_settings
   autocmd!
   autocmd FileType unite call s:unite_my_settings()
augroup end

function! s:unite_my_settings()
    nmap <buffer> <C-z> <Plug>(unite_toggle_transpose_window)
    imap <buffer> <C-z> <Plug>(unite_toggle_transpose_window)
    nmap <buffer> J <Plug>(unite_toggle_auto_preview)
    nmap <buffer> K <Plug>(unite_print_candidate)
    nmap <buffer> L <Plug>(unite_redraw)
    nunmap <buffer> <c-k>
    nunmap <buffer> <c-l>
    nunmap <buffer> <c-h>
    imap <buffer> <C-j> <Plug>(unite_toggle_auto_preview)
    nmap <buffer> <C-r> <Plug>(unite_narrowing_input_history)
    imap <buffer> <C-r> <Plug>(unite_narrowing_input_history)
    nmap <buffer> <Tab> <Plug>(unite_complete)
    imap <buffer> <Tab> <Plug>(unite_complete)
    nmap <buffer> <C-@> <Plug>(unite_choose_action)
    imap <buffer> <C-@> <Plug>(unite_choose_action)
    nmap <buffer> <esc> <Plug>(unite_exit)
    nmap <buffer> / <Plug>(unite_insert_enter)
    nmap <buffer><expr> v unite#do_action('left')
    imap <buffer><expr> <c-v> unite#do_action('left')
endfunction
" " }}}
" # Prefix shortcuts {{{
" Plugin extractable
nnoremap [unite] <Nop>
nmap s [unite]
nnoremap <silent> [unite]r :<C-u>UniteResume<CR>
nnoremap <silent> [unite]ma :<C-u>Unite mapping<CR>
nnoremap <silent> [unite]me :<C-u>Unite output:message<CR>
nnoremap <silent> [unite]u :<C-u>Unite ultisnips<CR>
nnoremap <silent> [unite]o :<C-u>Unite -direction=topleft -split outline<CR>
nnoremap <silent> [unite]tw :<c-u>Unite tmuxcomplete -default-action=append<cr>
nnoremap <silent> [unite]tl :<c-u>Unite tmuxcomplete/lines -default-action=append<cr>
nnoremap <silent> [unite]li :<c-u>Unite line<cr>
nnoremap <silent> [unite]mr :<C-u>Unite file_mru<cr>
nnoremap <silent> [unite]f :<C-u>Unite file_mru<cr>
nnoremap <silent> [unite]/ :<C-u>Unite line -input=<c-r>/<cr>
nnoremap <silent> [unite]bb :Unite -quick-match buffer<cr>
nnoremap <silent> [unite]qf :<c-u>Unite -wrap -prompt-direction=top quickfix<cr>
nnoremap <silent> [unite]ll :<c-u>Unite -wrap -prompt-direction=top location_list<cr>
nnoremap <silent> [unite][ :<c-u>UnitePrevious<cr>
nnoremap <silent> [unite]] :<c-u>UniteNext<cr>
nnoremap <silent> [unite]{ :<c-u>UniteFirst<cr>
nnoremap <silent> [unite]} :<c-u>UniteLast<cr>
" " }}}
" Ag grep config {{{
" Plugin extractable
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '-i --vimgrep --hidden --ignore ' .
            \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_line_enable_highlight = 1

nnoremap <silent> <c-f> :<c-u>Unite grep:!<cr>
nnoremap <silent> <leader>a "uyiw:<c-u>Unite grep:!::<c-r>u<cr>
vnoremap <silent> <leader>a :<c-u>call CallUniteAg()<cr>

function! CallUniteAg()
   let selection = s:get_visual_selection()
   call unite#start([['grep', '!', '', selection]])
endfunction

" }}}
" # File explorer (Ctrl+P) {{{
" Plugin extractable
let grep_source = has('nvim') ? 'file_rec/neovim' : 'file_rec/async'
nnoremap <silent> <expr> <leader><c-p> ":\<C-u>Unite -buffer-name=files " . grep_source . ":! file/new\<CR>"
vnoremap <silent> <expr> gf "\"uy:\<C-u>Unite -buffer-name=files " . grep_source . ":! -input=\<c-r>u\<CR>"
nmap <silent> gf viwgf

" "}}}
" # Other mappings {{{
nnoremap <silent> <leader><c-o> :<c-u>Unite jump<cr>
nmap <leader>epv :<c-u>Unite -input=.lvimrc file_rec/neovim<cr>
nmap <leader>spv :<c-u>LocalVimRC<cr>
nmap <leader>epg :<c-u>Unite file_rec/neovim:~/.vim/plugged<cr>
" "}}}
" " }}}
" # Indent guides configuration Neovim  {{{
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=#353738 ctermbg=none
hi IndentGuidesEven guibg=#252627 ctermbg=black

" "}}}
" # Neomake  {{{
" Lazy loadable
augroup neomake_save_linter
    autocmd!
    autocmd BufWritePost * Neomake
augroup end

let g:neomake_javascript_enabled_makers = ['standard']

" "}}}
" # Polyglot  {{{
" Lazy loadable
let g:jsx_ext_required = 1

" "}}}
" # Vim autoswap  {{{
let g:autoswap_detect_tmux = 1

" "}}}
" # Delimitmate  {{{
" Extractable configuration
function! DelimitMateCompletion(key)
    " Because of a Deoplete bug, I have to repeat a key to try to restore
    " original vim behaviour
    return (delimitMate#ShouldJump() ? "\<Del>" : "")
                \ . "\<c-x>" . a:key . (pumvisible() ? a:key : "")
endfunction

function! CustomCompletion(key)
    return "\<c-x>" . a:key . (pumvisible() ? a:key : "")
endfunction

imap <expr> <c-x><c-l> DelimitMateCompletion("\<c-l>")
imap <expr> <c-x><c-n> CustomCompletion("\<c-n>")
imap <expr> <c-x><c-p> CustomCompletion("\<c-p>")
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

if !exists('g:set_carriage_return')
    imap <CR> <C-G>u<Plug>delimitMateCR
    let g:set_carriage_return = 1
endif

augroup R_specific_settings
    au!
    au FileType R,rmd let b:delimitMate_matchpairs = "(:),[:],{:}"
augroup END


" "}}}
" # Windowswap  {{{
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>sw :call WindowSwap#EasyWindowSwap()<CR>

" "}}}
" # Vimwiki  {{{
" Extractable configuration
let g:vimwiki_list = [{'path': '~/Dropbox/Apps/vimwiki/wiki', 'path_html': '~/Dropbox/Apps/vimwiki/html'}]

nnoremap [d :VimwikiDiaryPrevDay<cr>
nnoremap ]d :VimwikiDiaryNextDay<cr>

" "}}}
" # Schlepp  {{{
" Extractable configuration
" Lazy loadable
if !exists('g:set_schlepp_shortcuts')
    vmap <unique> <up>    <Plug>SchleppUp
    vmap <unique> <down>  <Plug>SchleppDown
    vmap <unique> <left>  <Plug>SchleppLeft
    vmap <unique> <right> <Plug>SchleppRight
    vmap <unique> D       <Plug>SchleppDup
    let g:set_schlepp_shortcuts = 1
endif

" "}}}
" # incsearch.vim  {{{
" Extractable configuration
" Lazy loadable
map g/ <Plug>(incsearch-stay)
" "}}}
