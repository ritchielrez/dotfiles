" General
filetype plugin on
filetype indent on
set autoread
let mapleader = " "
set clipboard=unnamedplus
set termguicolors

" UI
set background=dark
set wrap
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

" Files, backups and undo
set nobackup
set nowb
set noswapfile
set hidden
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l


" Source the file, install plugins quickly
nnoremap <Leader>s :so ~/.config/nvim/init.vim<CR>
cnoremap Pi PlugInstall
cnoremap Pc PlugClean

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
    
    Plug 'terryma/vim-multiple-cursors'

    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    
    Plug 'tpope/vim-fugitive'

    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'simrat39/rust-tools.nvim'
    Plug 'hrsh7th/vim-vsnip'
    
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
    Plug 'norcalli/nvim-colorizer.lua'
	Plug 'sheerun/vim-polyglot'
    Plug 'dylanaraps/wal.vim'
call plug#end()

" FZF
nmap <Leader><Tab> <Plug>(fzf-maps-n)
nmap <Leader>p :Files<CR>

" NerdTree
nnoremap <Leader>e :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

luafile ~/.config/nvim/lua/init.lua
luafile ~/.config/nvim/lua/lsp.lua

" Omnisharp 
" let g:OmniSharp_server_path = '/mnt/c/Applications/run'

" nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <Leader>fi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <leader>cf <cmd>lua vim.lsp.buf.formatting()<CR>
" nnoremap <leader><space> <cmd>lua vim.lsp.buf.code_action()<CR>
" vnoremap <leader><space> :lua vim.lsp.buf.range_code_action()<CR>
" nnoremap <F2> <cmd>lua vim.lsp.buf.rename()<CR>
"

" Nvim-cmp

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect
" Avoid showing extra messages when using completion
set shortmess+=c

" Colorscheme
colorscheme gruvbox-material
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Recompile succkles porgrams automatically
autocmd BufWritePost patched.def.h,config.def.h !sudo rm config.h; sudo rm patches.h; sudo make install

" Lsp keybindings
" Code navigation shortcuts
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
