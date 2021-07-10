source ~/.config/nvim/basics.vim
source ~/.config/nvim/coc-settings.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/statusline.vim
source ~/.config/nvim/ale_config.vim

" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" Color scheme
colorscheme nvcode
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

