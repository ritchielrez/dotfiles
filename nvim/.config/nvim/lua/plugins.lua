require('packer').startup(function()
    -- To manage the package manager itself
    use 'wbthomason/packer.nvim'

    -- My favourite themes
    use 'sainnhe/gruvbox-material'
    -- use 'gruvbox-community/gruvbox'
    use 'ChristianChiarulli/nvcode-color-schemes.vim'

    -- Syntax highlighting
    -- use 'sheerun/vim-polyglot'

    -- Tresitter, a next gen syntax parser, mainly used to theme properly
    use 'nvim-treesitter/nvim-treesitter'

    -- Auto pairs
    use 'jiangmiao/auto-pairs'

    -- My fuzzy file finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Langauge autocompletion, error linting
    use 'neovim/nvim-lspconfig'
    use 'tami5/lspsaga.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Show me color codes live
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require 'colorizer'.setup {
        '*'; -- Highlight all files, but customize some others.
        '!vim'; -- Exclude vim from highlighting.
        -- Exclusion Only makes sense if '*' is specified!
        }
        end
    }

    -- Note taking
    use {
        "nvim-neorg/neorg",
        requires = "nvim-lua/plenary.nvim"
    }

    -- My statusbar
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- My tabline
    use {
        'akinsho/bufferline.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt=true}
    }

end)

-- Lsp config
require("plugins.lsp")

-- Neorg( note taking plugin ) config
require("plugins.neorg")

-- Cmp( completetion plugin ) config
require("plugins.cmp")

-- Tresitter config
require("plugins.treesitter")

-- My statusbar config
require("plugins.lualine")

-- My tabline config
require("plugins.bufferline")
