return {
  "neovim/nvim-lspconfig",
  opts = { },
  keys = {
    { "K", vim.lsp.buf.hover, { silent = true } },
  },
  config = function()
    vim.lsp.enable("tsgo")
  end,
}

