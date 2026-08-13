-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Tab>", "><CR>")
vim.keymap.set("n", "<S-Tab>", ":<<CR>")
vim.keymap.set("v", "<Tab>", "><CR>gv")
vim.keymap.set("v", "<S-Tab>", ":<<CR>gv")
