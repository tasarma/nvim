-- Options
local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath("state") .. "/undo"
opt.undofile = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"
opt.updatetime = 50

opt.clipboard = "unnamedplus"

opt.splitright = true
opt.splitbelow = true

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
