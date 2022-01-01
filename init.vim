
set encoding=utf-8
set cursorline
set lazyredraw
set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
set relativenumber
set nohlsearch
set incsearch
set scrolloff=8
set noerrorbells
set ignorecase
set smartcase
set noswapfile
set nobackup
set nowrap
set hidden
set colorcolumn=100
set signcolumn=yes
set splitbelow splitright
set wildmenu
set wildmode=list:longest,full
set termguicolors
set spelllang=en

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'relastle/bluewery.vim'
Plug 'vim-scripts/AutoComplPop'  " Autocomplete menu popup
"Plug 'ThePrimeagen/vim-be-good'
"Plug 'preservim/nerdtree'
call plug#end()

" AutoComplete settings
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c


syntax enable
syntax on
set background=dark
colorscheme gruvbox

let mapleader = " "

"Movement between panes
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
nnoremap <leader>l <C-w><C-l>


"nnoremap <C-b> :NERDTreeToggle<CR>

nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

"Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
