return {
  {
    'zbirenbaum/copilot.lua',
    lazy = false,
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = false,
          keymap = {
            accept = '<C-q>',
            next = '<M-]>',
            prev = '<M-[>',
            dismiss = '<C-]>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },
}
