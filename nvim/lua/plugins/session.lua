return {
  "folke/persistence.nvim",
  event = "VeryLazy",
  opts = { },
  keys = {
    { "<D-o>", function() require("persistence").select() end, desc = "List sessions" },
  },
  config = function()
    require("persistence").setup()
    
    -- Use vim.schedule to delay the session loading until after plugin loading
    vim.schedule(function()
      -- Only auto-load if no arguments were passed to nvim
      if vim.fn.argc() == 0 then
        require("persistence").load({ last = true })
      end
    end)
  end,
}
