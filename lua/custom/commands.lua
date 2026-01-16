local M = {}

vim.api.nvim_create_user_command('ClaudeWindow', function()
  vim.cmd 'vsplit'

  local width = math.floor(vim.o.columns * 0.3)
  vim.cmd('vertical resize ' .. width)

  vim.cmd 'terminal claude'
end, { desc = 'Open Claude in right-side terminal split' })

return M
