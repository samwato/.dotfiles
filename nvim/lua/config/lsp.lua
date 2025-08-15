require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver' },
})

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configure diagnostics display
vim.diagnostic.config({
  virtual_text = {
    prefix = '●',
    source = 'if_many',
  },
  float = {
    source = 'always',
    border = 'rounded',
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Diagnostic signs
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

lspconfig.tsserver.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, silent = true }
    
    -- LSP keymaps matching your WebStorm setup
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)  -- GotoDeclaration
    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)  -- ShowUsages  
    vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, opts)  -- GotoTypeDeclaration
    vim.keymap.set('n', '<S-k>', vim.lsp.buf.hover, opts)  -- QuickJavaDoc
    vim.keymap.set('n', '<leader>rr', vim.lsp.buf.rename, opts)  -- RenameElement
    vim.keymap.set('n', '<leader>rf', vim.lsp.buf.code_action, opts)  -- ShowIntentionActions
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float, opts)  -- Show error details
  end,
})
