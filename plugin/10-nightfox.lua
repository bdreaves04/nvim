vim.pack.add({
  { src = "https://github.com/EdenEast/nightfox.nvim" }, -- colorscheme
})
require('nightfox').setup({
  options = {
    transparent = true
  }
})
vim.cmd("colorscheme nightfox")
