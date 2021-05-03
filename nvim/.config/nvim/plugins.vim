" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


""" Plugins for fzf file searcher """
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'


""" Vim status line """
"""""""""""""""""""""""
"""""""""""""""""""""""
Plug 'vim-airline/vim-airline'


""" Markdown """
""""""""""""""""
""""""""""""""""
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


""" Color Scheme """
""""""""""""""""""""
""""""""""""""""""""
" Gruvbox color scheme
Plug 'https://github.com/morhetz/gruvbox.git'
" Nord color scheme
Plug 'arcticicestudio/nord-vim'


""" Coc lsp """
"""""""""""""""
"""""""""""""""
" For lsp
Plug 'neoclide/coc.nvim', {'branch': 'release'}


""" Syntax highlighting """
"""""""""""""""""""""""""""
"""""""""""""""""""""""""""
" For better syntax highlighting
Plug 'sheerun/vim-polyglot'


call plug#end()
