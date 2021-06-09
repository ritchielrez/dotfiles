let mapleader = " "

nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>s :so ~/.config/nvim/init.vim<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

cnoremap pi PlugInstall
cnoremap pc PlugClean
