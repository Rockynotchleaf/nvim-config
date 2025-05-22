return {
	"nvim-lua/plenary.nvim", -- common dependency
	vim.opt.rtp:append(vim.fn.stdpath("config") .. "/nvim-lspconfig.nvim"),
	vim.opt.rtp:append(vim.fn.stdpath("config") .. "/mason.nvim"),
	vim.opt.rtp:append(vim.fn.stdpath("config") .. "/mason-lspconfig.nvim"),

}
