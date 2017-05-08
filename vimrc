"/ OriginalAuthor: Pedro Franceschi <pedrohfranceschi@gmail.com>
" ModifiedVersion: Thales Mello <thalesmello@gmail.com>
" Source: http://github.com/thalesmello/vimfiles

call plug#begin()
Plug 'tpope/vim-sensible', only#if(!has('nvim'))
Plug 'tpope/vim-commentary'
Plug 'thalesmello/vim-go', { 'branch': 'feature/keyify-support' }
Plug 'morhetz/gruvbox'
Plug 'thalesmello/tabfold'
Plug 'Shougo/vimproc.vim', { 'do' : 'make' }
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'nelstrom/vim-markdown-folding'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tweekmonster/local-indent.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'teranex/jk-jumps.vim'
Plug 'thalesmello/vim-sleuth'
Plug 'dag/vim-fish'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/multichange.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'peterrincker/vim-argumentative'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-endwise'
Plug 'ludovicchabant/vim-gutentags', only#if(v:version >= 704)
Plug 'tpope/vim-rsi'
Plug 'bronson/vim-visual-star-search'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thalesmello/vim-indent-object'
Plug 'embear/vim-localvimrc'
Plug 'thalesmello/vim-unimpaired'
Plug 'Chiel92/vim-autoformat'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'simeji/winresizer'
Plug 'godlygeek/tabular'
Plug 'wesQ3/vim-windowswap'
Plug 'nhooyr/neoman.vim'
Plug 'SirVer/ultisnips', only#if(v:version >= 704, { 'on': ['UltiSnipsEdit'] })
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'gioele/vim-autoswap'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'vimwiki/vimwiki'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'lambdalisue/vim-pager'
Plug 'tweekmonster/exception.vim'
Plug 'ConradIrwin/vim-bracketed-paste', only#if(!has('nvim'))
Plug 'davidhalter/jedi'
Plug 'dbakker/vim-projectroot'
Plug 'thalesmello/tabmessage.vim'
Plug 'thalesmello/persistent.vim'
Plug 'thalesmello/pagarme-refactor.vim'
Plug 'thalesmello/config.loupe' | Plug 'wincent/loupe'
Plug 'dietsche/vim-lastplace'
Plug 'EinfachToll/DidYouMean'
Plug 'duggiefresh/vim-easydir'
Plug 'tmux-plugins/vim-tmux'
Plug 'zeorin/tmuxline.vim', {'branch': 'utf8-suppress-error'}
Plug 'thalesmello/devlindo.vim'
Plug 'sealemar/vtl'
Plug 'machakann/vim-highlightedyank'
Plug 'thalesmello/vim-tmux-clipboard'
Plug 'vim-scripts/ingo-library'
Plug 'vim-scripts/SyntaxRange'
Plug 'jalvesaq/Nvim-R'
Plug 'moll/vim-node'
Plug 'justinmk/vim-sneak'

" Denite
Plug 'Shougo/denite.nvim'
Plug 'chemzqm/unite-location'
Plug 'Shougo/neoyank.vim'

" Deoplete
Plug 'Shougo/deoplete.nvim',            only#if(has('nvim'))
Plug 'Shougo/echodoc.vim'
" Plug 'thalesmello/webcomplete.vim',     only#if(has('nvim'))
Plug 'zchee/deoplete-jedi',             only#if(has('nvim'), {'for': 'python'})
Plug 'mhartington/deoplete-typescript', only#if(has('nvim'), {'for': 'javascript'})
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'zchee/deoplete-go'
Plug 'wellle/tmux-complete.vim'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'rhysd/vim-textobj-ruby'
Plug 'kana/vim-textobj-function'
Plug 'bps/vim-textobj-python'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-line'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'kana/vim-textobj-entire'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'coderifous/textobj-word-column.vim'
Plug 'saihoooooooo/vim-textobj-space'
Plug 'glts/vim-textobj-indblock'
Plug 'kana/vim-textobj-indent'
Plug 'rhysd/vim-textobj-lastinserted'
Plug 'kana/vim-textobj-fold'
Plug 'thalesmello/vim-textobj-methodcall'
Plug 'thalesmello/vim-textobj-bracketchunk'
Plug 'rhysd/vim-textobj-conflict'
Plug 'yssl/QFEnter'
Plug 'lfilho/cosco.vim'

" Database
Plug 'ivalkeen/vim-simpledb'
Plug 'exu/pgsql.vim'

" Slime
Plug 'jgdavey/tslime.vim'
Plug 'vim-scripts/OnSyntaxChange'

Plug 'thalesmello/lkml.vim'
Plug 'junegunn/vim-easy-align'

" TODO: Check
" github-complete.vim
" committia.vim
" make outline use ctags for JavaScript

call plug#end()

let mapleader = "\<space>"
let maplocalleader = "'"
