local opt = vim.opt

opt.relativenumber = true -- show relative line numbers (good for choosing how many lines to delete)
opt.number = true -- shows absolure line numbers on cursor line

-- Tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Appearence

opt.termguicolors = true
opt.background = "dark"

-- Swapfile
opt.swapfile = false
