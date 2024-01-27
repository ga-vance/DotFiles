
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'GlennLeo/cobalt2'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } "Available options tokyonight-[night, storm, day, moon]
"Plug 'ghifarit53/tokyonight-vim' "For Vim
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'relastle/bluewery.vim'
Plug 'vim-scripts/AutoComplPop'  " Autocomplete menu popup
"Plug 'ThePrimeagen/vim-be-good'
"Plug 'preservim/nerdtree'
call plug#end()

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


" AutoComplete settings
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1

syntax enable
syntax on
set background=dark
colorscheme tokyonight

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
