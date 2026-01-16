local M = {}

-- New Claude CLI window on right
vim.api.nvim_create_user_command('Clw', function()
  vim.cmd 'vsplit'

  local width = math.floor(vim.o.columns * 0.3)
  vim.cmd('vertical resize ' .. width)

  vim.cmd 'terminal claude'
  vim.cmd 'startinsert'
end, { desc = 'Open Claude in right-side terminal split' })

-- New terminal window on right
vim.api.nvim_create_user_command('Term', function()
  vim.cmd 'vsplit'

  local width = math.floor(vim.o.columns * 0.3)
  vim.cmd('vertical resize ' .. width)

  vim.cmd 'terminal'
  vim.cmd 'startinsert'
end, { desc = 'Open terminal split on right' })

return M
