-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function augroup(name)
  return vim.api.nvim_create_augroup("custom_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("trim_on_save"),
  pattern = "*",
  callback = function(args)
    local buf = args.buf
    local bo = vim.bo[buf]

    if
      not bo.modifiable
      or bo.readonly
      or bo.buftype ~= ""
      or bo.binary
      or vim.wo.diff
      or bo.filetype:match("^git")
      or bo.filetype == "markdown"
    then
      return
    end

    local view = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
  desc = "Trim trailing whitespace on save",
})
