" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf.vim'
" Vim status line
Plug 'vim-airline/vim-airline'
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Gruvbox color scheme
Plug 'https://github.com/morhetz/gruvbox.git'
" Nord color scheme
Plug 'arcticicestudio/nord-vim'
" For lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" For better syntax highlighting
Plug 'sheerun/vim-polyglot'
call plug#end()
