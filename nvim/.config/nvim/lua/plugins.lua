require('packer').startup(function()
    -- To manage the package manager itself
    use 'wbthomason/packer.nvim'

    -- My favourite themes
    use 'sainnhe/gruvbox-material'
    use 'gruvbox-community/gruvbox'

    -- Syntax highlighting
    use 'sheerun/vim-polyglot'

    -- Tresitter, a next gen syntax parser, mainly used to theme properly
    use 'nvim-treesitter/nvim-treesitter'

    -- Auto pairs
    use 'jiangmiao/auto-pairs'

    -- My fuzzy file finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'neovim/nvim-lspconfig'

    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require 'colorizer'.setup {
        '*'; -- Highlight all files, but customize some others.
        '!vim'; -- Exclude vim from highlighting.
        -- Exclusion Only makes sense if '*' is specified!
        }
    end
    }

end)
