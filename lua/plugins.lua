vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/sainnhe/everforest" },                                  -- colorscheme
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
  { src = "https://github.com/stevearc/oil.nvim" },                                   -- file explorer
  { src = "https://github.com/neovim/nvim-lspconfig" },                               -- lsp defaults
  { src = "https://github.com/echasnovski/mini.pick" },                               -- file picker/input field
  { src = "https://github.com/echasnovski/mini.ai" },                                 -- more text objects
  { src = "https://github.com/echasnovski/mini.pairs" },                              -- auto complete pairs i.e. '', ()
  { src = "https://github.com/echasnovski/mini.extra" },                              -- auto complete pairs i.e. '', ()
  { src = "https://github.com/Saghen/blink.cmp",                version = "v1.7.0" }, -- completions
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/folke/sidekick.nvim" },                                 -- AI Sidekick
})

vim.cmd("colorscheme everforest")

require("oil").setup({
  view_options = { show_hidden = true }
})
local MiniPick = require('mini.pick')
MiniPick.setup()
vim.ui.select = MiniPick.ui_select
require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.extra').setup()
require('blink.cmp').setup()
require('mason').setup()
require('sidekick').setup()


vim.lsp.enable({ "lua_ls", "clangd", "pyright", "copilot", "cssls" })
