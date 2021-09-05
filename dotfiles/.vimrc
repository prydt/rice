" if vim-plug is not installed
" install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugins list
call plug#begin()

" general vim plugins
Plug 'tpope/vim-sensible'            " sensible defaults
Plug 'itchyny/lightline.vim'         " lightweight status line
Plug 'scrooloose/nerdtree'           " file tree browser
Plug 'ervandew/supertab'             " tab completion
Plug 'junegunn/goyo.vim'             " distraction-free writing mode
Plug 'nvim-lua/plenary.nvim'         " helper functions for telescope
Plug 'nvim-telescope/telescope.nvim' " the coolest fuzzy finder
Plug 'tpope/vim-eunuch'              " use many useful unix commands from within vim

" colorschemes
Plug 'joshdick/onedark.vim'             " Atom's One Dark theme
Plug 'dracula/vim', { 'as': 'dracula' } " popular Dracula colorscheme
Plug 'AlessandroYorba/Sierra'           " a pale pink dark colorscheme

" plugins that make programming way better
Plug 'tpope/vim-commentary'            " easily comment / uncomment code
Plug 'tpope/vim-fugitive'              " use git right in vim!
Plug 'airblade/vim-gitgutter'          " show git changes in the gutter
Plug 'bronson/vim-trailing-whitespace' " easily remove trailing whitespace
Plug 'ap/vim-css-color'                " highlight css colors
Plug 'mattn/emmet-vim'                 " write HTML a million times faster: ctrl+y+, for emmet
Plug 'turbio/bracey.vim'               " live html, css, js editing, :Bracey to run bracey server
Plug 'preservim/tagbar'                " tag bar on the side (F8)
Plug 'neovim/nvim-lspconfig'           " neovim Language Server Protocol

" additionalo syntax highlighting
Plug 'isobit/vim-caddyfile' " caddyfile syntax
Plug 'kylelaker/riscv.vim'  " RISC-V assembly syntax
Plug 'lervag/vimtex'        " LaTeX syntax + compiling management

" TODO switch to a patched font to use devicons
" TODO look into nvim-treesitter later
" TODO use EditorConfig for projects...
"
call plug#end()

filetype plugin indent on

colorscheme onedark
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
map <leader>t :Telescope<LF>
nmap <F8> :TagbarToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" map alt + arrow keys to switch between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
