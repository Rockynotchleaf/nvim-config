return {
	"seblyng/roslyn.nvim",
	config = function ()
		local roslyn = require("roslyn")
		roslyn.setup({
			ft = "cs",
			opts = {

			}
		})
	end
}
