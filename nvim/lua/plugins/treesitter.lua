return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'typescript', 'tsx', 'javascript', 'html', 'css', 'json', 'lua' },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  }
}
