return {
	"stevearc/conform.nvim",
	event = {
		"BufReadPre",
		"BufNewFile"
	},
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				go = { "gofmt" },
				-- You can also customize some of the format options for the filetype
				rust = { "rustfmt", lsp_format = "fallback" },
				-- You can use a function here to determine the formatters dynamically
				python = function(bufnr)
					if require("conform").get_formatter_info("ruff_format", bufnr).available then
						return { "ruff_format" }
					else
						return { "isort", "black" }
					end
				end,
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				json = { "prettier" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_format = "fallback",
				async = false,
				timeout_ms = 750,
			})
		end
		)
	end
}
