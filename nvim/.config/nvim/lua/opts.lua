-- Enable relative(overrated) numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Configure filetypes
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

-- Let's set up the tabs!!
vim.o.expandtab = true
vim.bo.expandtab = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.softtabstop = 4
vim.bo.softtabstop = 4

vim.o.swapfile = false
vim.bo.swapfile = false

-- Leader key is used to make unique keymaps
vim.g.mapleader = " "
vim.b.mapleader = " "

-- Termguicolors is needed for nvim-colorizer, which is gonna show the color codes
vim.o.termguicolors = true
vim.b.termguicolors = true

-- Signcolumn is a column where we could see the erros signs
vim.o.signcolumn = "yes"
vim.wo.signcolumn = "yes"
