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
set nohlsearch

set history=1000
set noswapfile

set number
set relativenumber

set termguicolors

set splitright
set splitbelow

set scrolloff=5
set nowrap

set mouse=a

syntax on


" KEYMAPS ---------------------

let mapleader = " "

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

" Numbers
nnoremap <leader>+ <C-x>
vnoremap <leader>+ <C-x>
nnoremap <leader>- <C-a>
vnoremap <leader>- <C-a>
