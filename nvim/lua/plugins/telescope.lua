return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup({
        defaults = {
          file_ignore_patterns = { "node_modules", ".git" },
          layout_config = {
            horizontal = {
              preview_width = 0.6,
            },
          },
        },
      })
      
      -- Keymaps matching your WebStorm setup
      vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')  -- GotoFile
      vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')   -- FindInPath
      vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')     -- Buffer list
    end,
  }
}