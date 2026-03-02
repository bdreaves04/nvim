vim.pack.add({
  { src = "https://github.com/echasnovski/mini.pick" },  -- file picker/input field
  { src = "https://github.com/echasnovski/mini.ai" },    -- more text objects
  { src = "https://github.com/echasnovski/mini.pairs" }, -- auto complete pairs i.e. '', ()
  { src = "https://github.com/echasnovski/mini.extra" }, -- auto complete pairs i.e. '', ()
})
local MiniPick = require('mini.pick')
MiniPick.setup()
vim.ui.select = MiniPick.ui_select
require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.extra').setup()
