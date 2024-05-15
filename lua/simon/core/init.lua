vim.g.mapleader = " "

vim.o.clipboard = "unnamedplus"

vim.o.wrap = false
vim.o.linebreak = true

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

-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   pattern = { "*" },
--   command = [[%s/\s\+$//e]],
-- })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.ftl" },
  command = [[set filetype=html]],
})

-- nvim-tree last buffer on quit fix
-- https://github.com/nvim-tree/nvim-tree.lua/issues/1368
vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    local invalid_win = {}
    local wins = vim.api.nvim_list_wins()
    for _, w in ipairs(wins) do
      local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
      if bufname:match("NvimTree_") ~= nil then
        table.insert(invalid_win, w)
      end
    end
    if #invalid_win == #wins - 1 then
      -- Should quit, so we close all invalid windows.
      for _, w in ipairs(invalid_win) do vim.api.nvim_win_close(w, true) end
    end
  end
})
