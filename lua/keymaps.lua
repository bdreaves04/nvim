---------------------
--- Keymaps
---------------------

vim.keymap.set('n', '-', ':Oil<CR>', { silent = true })           -- open files
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')              -- find file
vim.keymap.set('n', '<leader>fs', ':Pick grep_live<CR>')          -- find string
vim.keymap.set('n', '<leader>nh', ':nohl<CR>', { silent = true }) -- clear highlight
vim.keymap.set('n', '<leader>of', vim.diagnostic.open_float)      -- open diagnostic float
vim.keymap.set({ 'n', 'v' }, '<C-p>', '"*p')                      -- paste from system clipboard

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
end, { desc = "Format with LSP or fallback to none-ls" }) -- format document
