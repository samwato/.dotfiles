return {
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    config = function()
      local wk = require('which-key')
      
      wk.setup({
        plugins = {
          marks = true,
          registers = true,
          spelling = {
            enabled = true,
            suggestions = 20,
          },
          presets = {
            operators = false,
            motions = true,
            text_objects = true,
            windows = true,
            nav = true,
            z = true,
            g = true,
          },
        },
        window = {
          border = "rounded",
          position = "bottom",
          margin = { 1, 0, 1, 0 },
          padding = { 2, 2, 2, 2 },
          winblend = 0,
        },
        layout = {
          height = { min = 4, max = 25 },
          width = { min = 20, max = 50 },
          spacing = 3,
          align = "left",
        },
        ignore_missing = true,
        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
        show_help = true,
        triggers = "auto",
        triggers_blacklist = {
          i = { "j", "k" },
          v = { "j", "k" },
        },
      })

      -- Register key mappings with descriptions matching your WebStorm setup
      wk.register({
        ["<leader>"] = {
          f = {
            name = "Find",
            f = { "<cmd>Telescope find_files<cr>", "Find Files" },
            g = { "<cmd>Telescope live_grep<cr>", "Find in Path" },
            b = { "<cmd>Telescope buffers<cr>", "Buffers" },
          },
          g = {
            name = "Go to",
            d = { vim.lsp.buf.definition, "Go to Declaration" },
            r = { vim.lsp.buf.references, "Show Usages" },
            t = { vim.lsp.buf.type_definition, "Go to Type Declaration" },
          },
          r = {
            name = "Refactor",
            r = { vim.lsp.buf.rename, "Rename Element" },
            f = { vim.lsp.buf.code_action, "Show Intention Actions" },
            R = { function() vim.lsp.buf.format() end, "Reformat Code" },
          },
          s = "Substitute word",
          u = "Toggle case",
          y = "Copy to clipboard",
          ["+"] = "Increment number",
          ["-"] = "Decrement number",
        },
      })
    end,
  }
}