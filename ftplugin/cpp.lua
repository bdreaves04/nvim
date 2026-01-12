vim.keymap.set("n", "K", function()
  local word = vim.fn.expand("<cword>")
  if not word or #word == 0 then
    vim.lsp.buf.hover()
    return
  end

  -- Check if the man page exists
  local check = vim.fn.system({"man", "-w", word})
  local ok = vim.v.shell_error == 0 and #check > 0

  if ok then
    vim.cmd("Man " .. word)
  else
    vim.lsp.buf.hover()
  end
end, { buffer = true, silent = true })
