---------------------
--- Keymaps
---------------------

vim.keymap.set('n', '<leader>nh', ':nohl<CR>', { silent = true }) -- clear highlight
vim.keymap.set('n', '<leader>of', vim.diagnostic.open_float)      -- open diagnostic float
vim.keymap.set({ 'n', 'v' }, '<C-p>', '"*p')                      -- paste from system clipboard
