vim.opt.nu = true
vim.opt.relativenumber = true
 
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false 
vim.opt.incsearch = true
vim.opt.autoread = true
vim.opt.cursorline = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.updatetime = 50

vim.opt.clipboard="unnamedplus"

-- Netrw settings
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.opt.splitright = true
