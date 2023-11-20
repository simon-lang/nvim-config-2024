vim.g.mapleader = " "

vim.o.clipboard = "unnamedplus"

vim.o.hlsearch = false

vim.o.number = true
vim.o.relativenumber = false

vim.opt.tabstop = 2       -- Number of spaces that a tab character represents
vim.opt.shiftwidth = 2    -- Number of spaces for auto-indenting using >> or <<
vim.opt.softtabstop = 2   -- Number of spaces inserted when Tab key is pressed
vim.opt.expandtab = true  -- Use spaces instead of tab characters

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.shortmess:append({ I = true })
