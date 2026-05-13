vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.winborder = 'rounded'

vim.o.shiftwidth = 2
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.tabstop = 8
vim.o.softtabstop = 0

vim.o.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
