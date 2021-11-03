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

-- Termguicolors is needed for colorizer plugin
vim.o.termguicolors = true
vim.g.termguicolors = true


