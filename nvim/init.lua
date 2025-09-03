vim.g.mapleader = ' '

-- Options
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

-- Keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")                                        -- Move lines down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")                                        -- Move lines up
vim.keymap.set('n', '<C-d>', '<C-d>zz')                                             -- Centre screen on scroll down
vim.keymap.set('n', '<C-u>', '<C-u>zz')                                             -- Centre screen on scroll up
vim.keymap.set('v', '<leader>y', '"+y')                                             -- Copy to clipboard
vim.keymap.set('n', '<leader>s', 'yiw:%s/\\<<C-r>"\\>/<C-r>"/gI<Left><Left><Left>') -- Substitute word
vim.keymap.set('n', '<leader>u', 'v~')                                              -- Toggle Case (Normal)
vim.keymap.set('v', '<leader>u', '~')                                               -- Toggle Case (Visual)

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')                         -- Source file
vim.keymap.set('n', '<leader>w', ':write<CR>')                                      -- Write
vim.keymap.set('n', '<leader>q', ':quit<CR>')                                       -- Quit
vim.keymap.set('n', '<leader>l', vim.lsp.buf.format)                                -- Format
vim.keymap.set('n', '<leader>p', ':FzfLua files resume=true<CR>')                   -- Find files
vim.keymap.set('n', '<leader>f', ':FzfLua grep resume=true<CR>')                    -- Search files
vim.keymap.set('n', '<leader>b', ':FzfLua git_branches resume=true<CR>')            -- Find Git Branch


-- Plugins
vim.pack.add({
  { src = 'https://github.com/rebelot/kanagawa.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim' },
  { src = 'https://github.com/ibhagwan/fzf-lua' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
})

-- LSP
require 'mason'.setup()
vim.lsp.enable({ 'lua_ls', 'ts_ls' })

-- TODO THIS DOESN"T WORK WELL
-- Auto completion
-- vim.api.nvim_create_autocmd("LspAttach", {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if client then
--       -- enable omnifunc
--       vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
-- 
--       -- enable LSP completion
--       vim.lsp.completion.enable(
--         true,      -- enable completions
--         client.id, -- client id
--         args.buf,  -- buffer
--         { autotrigger = true }
--       )
--     end
--   end,
-- })
-- vim.cmd('set completeopt+=noselect')

-- Color Scheme
require('kanagawa').setup({
  transparent = true,
  keywordStyle = { italic = false },
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none",
          bg_m3 = "none"
        }
      }
    }
  },
  overrides = function(colors)
    return {
      StatuslineGitBranch = { fg = colors.palette.dragonRed }
    }
  end,
})

vim.cmd('colorscheme kanagawa-dragon')

-- Statusline
function git_branch()
  local handle = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
  if not handle then return "" end
  local branch = handle:read("*l")
  handle:close()
  return branch or ""
end

vim.o.statusline = "%#Directory#%f %#StatuslineGitBranch#(%{v:lua.git_branch()})"
