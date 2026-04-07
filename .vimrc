set termguicolors
set background=dark

" list plugins here
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
call plug#end()

" coc.nvim rules here
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

syntax on
filetype plugin indent on

" vim specific rules here
colorscheme catppuccin_mocha
set number
set nocompatible
set wildmenu
set wildmode=longest,list,full
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set backspace=indent,eol,start
set incsearch
set scrolloff=1
let g:airline_theme = 'catppuccin_mocha'
let g:ctrlp_show_hidden = 1
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
runtime! macros/matchit.vim
