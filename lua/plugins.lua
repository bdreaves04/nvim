vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
})

require('plugins.nightfox')
require('plugins.oil')
require('plugins.mini')
require('plugins.blink')
require('plugins.mason')
require('plugins.null-ls')
require('plugins.markdown')

require('lsp')
