-- Treesitter config
require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
