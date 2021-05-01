let mapleader = " "

nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>s :so ~/.config/nvim/init.vim<cr>
nnoremap <leader>f :Files<cr>

cnoremap pi PlugInstall
cnoremap pc PlugClean
