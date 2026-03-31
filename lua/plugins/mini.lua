vim.pack.add({
  { src = "https://github.com/echasnovski/mini.pick" },  -- file picker/input field
  { src = "https://github.com/echasnovski/mini.ai" },    -- more text objects
  { src = "https://github.com/echasnovski/mini.pairs" }, -- auto complete pairs i.e. '', ()
  { src = "https://github.com/echasnovski/mini.extra" }, -- auto complete pairs i.e. '', ()
})
require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.extra').setup()


local function send_to_qflist(items)
  local qf = {}

  for _, item in ipairs(items) do
    table.insert(qf, {
      filename = item.path or item.filename,
      lnum = item.lnum or 1,
      col = item.col or 1,
      text = item.text or item.line or '',
    })
  end

  vim.fn.setqflist({}, ' ', {
    title = 'mini.pick results',
    items = qf,
  })

  vim.cmd('copen')
end

local MiniPick = require('mini.pick')
MiniPick.setup({
  mappings = {
    send_qf = {
      char = '<C-q>',
      func = function()
        local items = MiniPick.get_picker_items()
        send_to_qflist(items)
      end,
    },
  },
})
vim.ui.select = MiniPick.ui_select
