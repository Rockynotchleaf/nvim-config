return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		vim.lsp.config("*", {
			capabilities = vim.lsp.protocol.make_client_capabilities()
		})
		-- enable mason and configure icons
		mason.setup()

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"pyright",
				"gopls",
			},
			automatic_enable = true,
		})
	end,
}
