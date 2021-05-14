set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'junegunn/goyo.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

" colorscheme onedark
let g:airline_theme='onedark'
set shiftwidth=4 smartindent expandtab " tabs
set number  " line numbers
set mouse=a " mouse movements
set ai " auto indent
set si " smart indent
set clipboard=unnamedplus " clipboard = normal clipboard
set list " show special characters
set colorcolumn=80

" keybinding changes
map <C-n> :NERDTreeToggle<LF>
map <C-g> :Goyo<LF>

" map alt + arrow keys to switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
