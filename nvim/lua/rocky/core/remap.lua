-- Set leader key to spacebar
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
