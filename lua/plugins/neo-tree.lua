return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local config = require("neo-tree")
		config.setup({
			filesystem = {
				filtered_items = {
					visible = true,
					never_show = {
						"node_modules",
						".next",
						".git",
						".idea",
						".DS_Store",
						"thumbs.db",
					},
					always_show = {
						".env",
						".env.local",
						".gitignore",
					},
				},
			},
		})

		vim.keymap.set(
			"n",
			"<C-n>",
			":Neotree toggle filesystem reveal left<CR>",
			{ noremap = true, silent = true, desc = "Toggle Neo-tree Sidebar" }
		)
	end,
}
