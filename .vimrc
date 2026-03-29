set termguicolors
set background=dark
call plug#begin()

" List your plugins here
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

syntax on
filetype plugin indent on

colorscheme catppuccin_mocha
set nocompatible
set wildmenu
set wildmode=longest,list,full
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=indent,eol,start
let g:airline_theme = 'catppuccin_mocha'
let g:ctrlp_show_hidden = 1
