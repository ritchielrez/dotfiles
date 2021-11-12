local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent=true }

-- Editor keymaps related to apply config, save current file and quit the editor
keymap("n", '<leader>s', ':so ~/.config/nvim/init.vim<cr>', opts)
keymap("n", '<leader>w', ':w<cr>', opts)
keymap("n", '<leader>q', ':q<cr>', opts)

-- Quit insert mode faster
keymap('i', 'jj', '<Esc>', opts)

-- Telescope keymaps
keymap("n", '<leader>ff', ':Telescope find_files<cr>', opts)
-- keymap("n", '<leader>e', ':Telescope find_files<cr>', opts)

-- Netrw(file manager) keymaps
keymap("n", '<leader>ee', ':20Lex<cr>', opts)

-- Lsp keymaps
keymap("n", 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap("n", 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

keymap("n", 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

keymap("n", 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap("n", '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap("n", '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
keymap("n", '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
keymap("n", '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
keymap("n", '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
keymap("n", '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap("n", '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
keymap("n", 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

keymap("n", '<space>er', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)


keymap("n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
keymap("n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
keymap("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
keymap("n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
keymap("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
keymap("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
keymap("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
keymap("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", opts)
keymap("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", opts)
