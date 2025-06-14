-- Leader key (also set in lazy.lua but here for reference)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Basic options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Scrolling
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- UI
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.g.have_nerd_font = true

-- Undo
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- Whitespace
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 24

-- Mandatory: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
