syntax on
filetype plugin indent on


set tabstop=4
set softtabstop=4
set expandtab

set number
set showcmd

set incsearch
set hlsearch
set undodir=~/.vim/undodir

set scrolloff=10

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'kaicataldo/material.vim'

call plug#end()

let g:material_theme_style = 'darker'
colorscheme material
