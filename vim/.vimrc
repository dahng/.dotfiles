let mapleader=" "

" Editor preferences
syntax on

set number relativenumber

set cursorline

set expandtab
set autoindent
set fileformat=unix
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Functionality
set hlsearch
set incsearch
nnoremap <leader>nh :nohl<CR>

if system('uname -s') == "Darwin\n"
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
nnoremap <leader>cp ggVGy
nnoremap x "_x

set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>sv <C-w>v
nnoremap <leader>sh <C-w>s
nnoremap <leader>se <C-w>=
nnoremap <leader>sx :close<CR>

