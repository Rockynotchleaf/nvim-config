return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})
		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set(
			"n",
			"<leader>hm",
			function() harpoon:list():add() end,
			{ desc = "Mark file with harpoon" }
		)
		keymap.set("n", "<leader>hn", function() harpoon:list():next() end,
			{ desc = "Go to next harpoon mark" })
		keymap.set(
			"n",
			"<leader>hp",
			function() harpoon:list():prev() end,
			{ desc = "Go to previous harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>h",
			function() toggle_telescope(harpoon:list()) end,
			{ desc = "Toggle harpoon ui" }
		)
	end,
}
