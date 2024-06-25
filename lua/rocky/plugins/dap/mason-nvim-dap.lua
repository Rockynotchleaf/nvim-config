return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap"
	},
	config = function()
		local mdap = require("mason-nvim-dap")

		mdap.setup({
			ensure_installed = {"python", "delve"},
			handlers = {},
		})
	end,
}
