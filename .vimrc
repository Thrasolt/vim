syntax on
filetype plugin indent on


set tabstop=2
set softtabstop=2
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
Plug 'hashivim/vim-vagrant'
Plug 'airblade/vim-gitgutter'
Plug 'pearofducks/ansible-vim'
Plug 'editorconfig/editorconfig-vim'

call plug#end()

let g:material_theme_style = 'darker'
colorscheme material

highlight LineNr term=bold cterm=NONE ctermfg=White ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
