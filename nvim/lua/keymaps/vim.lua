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