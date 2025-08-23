return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = { },
  keys = {
    { "<D-p>", function() require("fzf-lua").files() end, desc = "FZF Files" },
    { "<D-F>", function() require("fzf-lua").live_grep({ resume = true }) end, desc = "FZF Search" },
  },
}
