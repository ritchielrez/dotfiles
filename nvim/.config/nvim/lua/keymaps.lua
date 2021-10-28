local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent=true }

-- Editor keymaps related to apply config, save current file and quit the editor
keymap('n', '<leader>s', ':so ~/.config/nvim/init.vim<cr>', opts)
keymap('n', '<leader>w', ':w<cr>', opts)
keymap('n', '<leader>q', ':q<cr>', opts)

-- Quit insert mode faster
keymap('i', 'jj', '<Esc>', opts)

-- Telescope keymaps
keymap('n', '<leader>ff', ':Telescope find_files<cr>', opts)

-- Netrw(file manager) keymaps
keymap('n', '<leader>e', ':20Lex<cr>', opts)

