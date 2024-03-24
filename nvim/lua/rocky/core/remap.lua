-- Set leader key to spacebar
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Opens up explorer" })
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
