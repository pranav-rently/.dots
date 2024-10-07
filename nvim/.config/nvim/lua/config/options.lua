-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.listchars = { tab = "→ ", extends = "›", precedes = "‹", nbsp = "␣", trail = "·", eol = "↲" }
vim.opt.wrap = true
vim.opt.colorcolumn = { "80", "120" }

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
