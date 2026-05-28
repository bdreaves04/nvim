---------------------
--- Keymaps
---------------------

vim.keymap.set('n', '<leader>nh', ':nohl<CR>', { silent = true }) -- clear highlight
vim.keymap.set('n', '<leader>of', vim.diagnostic.open_float)      -- open diagnostic float
vim.keymap.set({ 'n', 'v' }, '<C-p>', '"*p')                      -- paste from system clipboard


-- Respect wrap when moving vertically
vim.keymap.set("n", "j", function()
  return vim.v.count == 0 and (vim.wo.wrap and "gj" or "j") or "j"
end, { expr = true })

vim.keymap.set("n", "k", function()
  return vim.v.count == 0 and (vim.wo.wrap and "gk" or "k") or "k"
end, { expr = true })
