set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-commentary'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/goyo.vim'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim' " ctrl+y+, for emmet
Plugin 'ludovicchabant/vim-gutentags'

Plugin 'joshdick/onedark.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }

Plugin 'isobit/vim-caddyfile'
Plugin 'kylelaker/riscv.vim'
Plugin 'lervag/vimtex'
Plugin 'turbio/bracey.vim' " :Bracey to run bracey server

call vundle#end()

filetype plugin indent on

colorscheme dracula
" let g:airline_theme='onedark'
set shiftwidth=4 smartindent expandtab " tabs
set number  " line numbers
set mouse=a " mouse movements
set ai " auto indent
set si " smart indent
set clipboard=unnamedplus " clipboard = normal clipboard
set list " show special characters
set colorcolumn=80
set noshowmode " don't show what mode is being used (since its redundant)

" for lightline.vim
let g:lightline = {'colorscheme': 'wombat'}

" for emmet
let g:user_emmet_leader_key='<C-Z>'

" keybinding changes
map <C-n> :NERDTreeToggle<LF>
map <C-g> :Goyo<LF>

" map alt + arrow keys to switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
