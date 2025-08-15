vim.g.mapleader = ' '

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- VIM OPTIONS
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 5
vim.o.confirm = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.history = 1000
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.wrap = false
vim.o.mouse = 'a'
vim.o.backspace = 'indent,eol,start'
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.signcolumn = 'yes'

-- See `:help 'clipboard'`
vim.api.nvim_create_autocmd('UIEnter', {
  callback = function()
    vim.o.clipboard = 'unnamedplus'
  end,
})


-- KEYMAPS
vim.keymap.set('n', 'Q', '<Nop>')

-- Move lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Centre screen on scroll up and down
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Copy to clipboard
vim.keymap.set('v', '<leader>y', '"+y')

-- Substitute word 
vim.keymap.set('n', '<leader>s', 'yiw:%s/\\<<C-r>"\\>/<C-r>"/gI<Left><Left><Left>')

-- Window navigation
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-h>', '<C-w>h')

-- Window splits
vim.keymap.set('n', '<C-\\>', '<C-w>v')

-- Increment and Decrement Numbers
vim.keymap.set('n', '<leader>+', '<C-a>')
vim.keymap.set('v', '<leader>+', '<C-a>')
vim.keymap.set('n', '<leader>-', '<C-x>')
vim.keymap.set('v', '<leader>-', '<C-x>')

-- Toggle Case
vim.keymap.set('n', '<leader>u', 'v~')
vim.keymap.set('v', '<leader>u', '~')

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- [[ Basic Autocommands ]].
-- See `:h lua-guide-autocommands`, `:h autocmd`, `:h nvim_create_autocmd()`

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- [[ Create user commands ]]
-- See `:h nvim_create_user_command()` and `:h user-commands`

-- Create a command `:GitBlameLine` that print the git blame for the current line
vim.api.nvim_create_user_command('GitBlameLine', function()
  local line_number = vim.fn.line('.') -- Get the current line number. See `:h line()`
  local filename = vim.api.nvim_buf_get_name(0)
  print(vim.fn.system({ 'git', 'blame', '-L', line_number .. ',+1', filename }))
end, { desc = 'Print the git blame for the current line' })

-- Load configuration modules
require("lazy").setup("plugins")

-- Load additional configs
require('config.lsp')
require('config.completion')

