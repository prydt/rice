set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF
local nvim_lsp = require('lspconfig')
nvim_lsp.pyright.setup{}
-- nvim_lsp.java_language_server.setup{} -- TODO figure out what LSP things to use
EOF
