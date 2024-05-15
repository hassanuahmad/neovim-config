return {
	"rose-pine/neovim",
	lazy = false,
	name = "rose-pine",
	priority = 1000,
	config = function()
		local config = require("rose-pine")
		config.setup({
			variant = "main",
			-- variant = "dawn",
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
