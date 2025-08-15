return {
  {
    dir = "/Users/samwato/.dotfiles",
    name = "jetbrains-dark",
    priority = 1000,
    config = function()
      vim.cmd("source ~/.dotfiles/jetbrains_dark.vim")
    end,
  }
}