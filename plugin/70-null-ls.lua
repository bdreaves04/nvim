vim.pack.add({
  { src = "https://github.com/nvimtools/none-ls.nvim" }
})
require("null-ls").setup({
  sources = {
    require("null-ls").builtins.formatting.stylua,
    require("null-ls").builtins.formatting.prettier,
    require("null-ls").builtins.formatting.black,
  },
})

-- fallback formatting to non-ls if no lsp with fomratting present
local function format_with_fallback(bufnr)
  bufnr = bufnr or vim.api.nvim_get_current_buf()

  local clients = vim.lsp.get_clients({ bufnr = bufnr })
  local has_lsp_formatter = false

  for _, client in ipairs(clients) do
    if client.name ~= "null-ls" and client:supports_method("textDocument/formatting") then
      has_lsp_formatter = true
      break
    end
  end

  if has_lsp_formatter then
    vim.lsp.buf.format({
      bufnr = bufnr,
      filter = function(client)
        return client.name ~= "null-ls"
      end,
    })
  else
    vim.lsp.buf.format({
      bufnr = bufnr,
      filter = function(client)
        return client.name == "null-ls"
      end,
    })
  end
end

vim.keymap.set('n', '<leader>fm', function()
  format_with_fallback()
end, { desc = "Format with LSP or fallback to none-ls" })
