"Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


""" Plugins for fzf file searcher """
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

""" Vim status line """
"""""""""""""""""""""""
"""""""""""""""""""""""
" Plug 'vim-airline/vim-airline'


""" Markdown """
""""""""""""""""
""""""""""""""""
" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-markdown'
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

""" Color Scheme """
""""""""""""""""""""
""""""""""""""""""""
" Gruvbox color scheme
Plug 'https://github.com/morhetz/gruvbox.git'


""" For lsp """
"""""""""""""""
"""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neovim/nvim-lspconfig'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'


""" For auto pairs """
""""""""""""""""""""""
""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'

""" For explorer """
""""""""""""""""""""
""""""""""""""""""""
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


""" Syntax highlighting """
"""""""""""""""""""""""""""
"""""""""""""""""""""""""""
" For better syntax highlighting
Plug 'sheerun/vim-polyglot'

""" For AHK """
"""""""""""""""
"""""""""""""""
Plug 'rcmdnk/vim_ahk'


call plug#end()
