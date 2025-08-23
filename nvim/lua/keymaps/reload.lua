local reloadConfig = require("utils.reload").reloadConfig

vim.keymap.set("n", "<leader>sv", reloadConfig, { desc = "Reload Neovim config" })
