vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'yes'
vim.o.winborder = 'rounded'
vim.o.scrolloff = 8
vim.opt.smoothscroll = true

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
    vim.hl.hl_op()
  end,
})

vim.o.foldmethod = 'expr'
vim.o.foldlevel = 99
vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.o.indentexpr = "v:lua.vim.treesitter.indentexpr()"
