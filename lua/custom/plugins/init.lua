-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 20,
        open_mapping = [[<C-\>]],
        direction = 'float', -- Options: 'vertical', 'horizontal', 'tab', 'float'
        float_opts = {
          border = 'curved',
          winblend = 3,
        },
      }
      vim.keymap.set('n', '<leader>ts', '<cmd>ToggleTerm size=10 direction=horizontal<CR>', { noremap = true, silent = true, desc = 'Horizontal Terminal' })
      -- vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm size=40 direction=vertical<CR>', { noremap = true, silent = true, desc = 'Vertical Terminal' })
      -- vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true, desc = 'Floating Terminal' })
    end,
  },
}
