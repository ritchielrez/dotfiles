" General
filetype plugin on
filetype indent on
set autoread
let mapleader = " "
set clipboard=unnamedplus

" UI
syntax on
set background=dark
set ruler
set backspace=eol,start,indent
set ignorecase
set smartcase
set incsearch
set lazyredraw
set nohlsearch
set magic
set showmatch
set foldcolumn=1
set number
set relativenumber
set shortmess+=c
set previewheight=10
set laststatus=2
set scrolloff=10
set signcolumn=yes

"Files, backups and undo
set nobackup
set nowb
set noswapfile
set hidden
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Text/Indent
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set nowrap

" Quick fix
map <C-j> :cn<CR>
map <C-k> :cp<CR>

" Vim Plug
call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'morhetz/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
call plug#end()

" FZF
nmap <Leader><Tab> <Plug>(fzf-maps-n)
nmap <Leader>p :Files<CR>

" NerdTree
nnoremap <Leader>t :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

" LSP
lua << EOF
 -- local nvim_lsp = require('lspconfig')

 -- local on_attach = function(client, bufferNumber)
    -- require('completion').on_attach(client)
 -- end

 -- local pid = vim.fn.getpid()
 -- local omnisharp_bin = "/mnt/c/Applications/run"
 -- nvim_lsp.omnisharp.setup({ on_attach = on_attach })
 --nvim_lsp.rust_analyzer.setup({ on_attach = on_attach })
 --nvim_lsp.clangd.setup({ on_attach = on_attach })
 --nvim_lsp.tsserver.setup({ on_attach = on_attach })

EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" Omnisharp 
" let g:OmniSharp_server_path = '/mnt/c/Applications/run'

" nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <Leader>fi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <leader>cf <cmd>lua vim.lsp.buf.formatting()<CR>
" nnoremap <leader><space> <cmd>lua vim.lsp.buf.code_action()<CR>
" vnoremap <leader><space> :lua vim.lsp.buf.range_code_action()<CR>
" nnoremap <F2> <cmd>lua vim.lsp.buf.rename()<CR>

inoremap <expr><tab> coc#refresh()

" Colorscheme
colorscheme onedark
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

