return {
	"ellisonleao/gruvbox.nvim",
	name = "gruvbox",
	lazy = false,
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		local gruvbox = require('gruvbox')

		gruvbox.setup({contrast="hard"})
		-- load the colorscheme here
		vim.cmd([[colorscheme gruvbox]])
	end,
}
