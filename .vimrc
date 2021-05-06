set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'

call vundle#end()

filetype plugin indent on

colorscheme onedark
set shiftwidth=4 smartindent expandtab " tabs
set number  " line numbers
set mouse=a " mouse movements
set ai " auto indent
set si " smart indent
set clipboard=unnamedplus " clipboard = normal clipboard
set list " show special characters
