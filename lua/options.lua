vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.winborder = 'solid'

vim.o.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.tabstop = 8
vim.o.softtabstop = 0

vim.o.wrap = false
vim.g.clipboard = "wl-copy"
vim.g.mapleader = " "

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
