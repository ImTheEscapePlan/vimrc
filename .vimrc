call plug#begin()

" List your plugins here
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

syntax on
filetype plugin indent on
set nocompatible
set wildmenu
set wildmode=longest,list,full
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=indent,eol,start
set termguicolors
let g:airline_theme = 'catppuccin_mocha'
let g:ctrlp_show_hidden = 1


