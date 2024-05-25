vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.mouse = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.updatetime = 50

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd([[autocmd BufWritePre * %s/\s\+$//e]])
