vim.pack.add({
  { src = "https://github.com/neovim/nvim-lspconfig" },   -- lsp defaults
})
vim.lsp.enable({ "lua_ls", "clangd", "pyright", "cssls", "gopls", "ts_ls", "eslint", "rust_analyzer" })
