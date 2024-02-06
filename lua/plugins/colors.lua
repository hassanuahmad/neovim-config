return {
	"rose-pine/neovim",
	lazy = false,
	name = "rose-pine",
	priority = 1000,
	config = function()
		local config = require("rose-pine")
		config.setup({
			variant = "moon",
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
