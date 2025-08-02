---------------------
--- Keymaps
---------------------

vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format)        -- format document
vim.keymap.set('n', '-', ':Oil<CR>', { silent = true })      -- open files
vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')         -- find file
vim.keymap.set('n', '<leader>fs', ':Pick grep_live<CR>')     -- find string
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')               -- clear highlight
vim.keymap.set('n', '<leader>of', vim.diagnostic.open_float) -- open diagnostic float
vim.keymap.set({ 'n', 'v' }, '<C-p>', '"*p')                 -- paste from system clipboard
