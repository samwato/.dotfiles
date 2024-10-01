let mapleader = " "
let g:netrw_liststyle = 3


" OPTIONS ---------------------
set nocompatible

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent

set incsearch

" Toggle hightlight search
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

set history=1000
set noswapfile

set number
set relativenumber

set termguicolors
set cursorline

set splitright
set splitbelow

set scrolloff=5
set nowrap

set mouse=a

set backspace=indent,eol,start

syntax on


" KEYMAPS ---------------------

let mapleader = " "

nnoremap Q <Nop>

" Move lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Centre screen on scroll up and down
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Copy to clipboard
vnoremap <leader>y "+y

" Substitute word 
nnoremap <leader>s yiw:%s/\<<C-r>"\>/<C-r>"/gI<Left><Left><Left>

" Window navigation
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

" Window splits
nnoremap <C-\> <C-w>v

" Increment and Decrement Numbers
nnoremap <leader>+ <C-a>
vnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>
vnoremap <leader>- <C-x>

" Toggle Case
nnoremap <leader>u v~
vnoremap <leader>u ~


" Plugins ---------------------
call plug#begin()

Plug 'liuchengxu/vim-which-key'

call plug#end()

" Which Key --
let g:which_key_map = {
      \ 's' : 'Substitute word',
      \ 'u' : 'Toggle case',
      \ 'y' : 'Copy to clipboard',
      \ '+' : 'Increment number',
      \ '-' : 'Decrement number',
      \ }

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

call which_key#register('<Space>', "g:which_key_map")


" Theme ----------------------
source ~/.dotfiles/jetbrains_dark.vim
