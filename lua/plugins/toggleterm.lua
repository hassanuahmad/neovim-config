return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		local config = require("toggleterm")
		config.setup({
			size = 20,
			open_mapping = [[<c-\>]],
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = "1",
			start_in_insert = true,
			persist_size = true,
			direction = "float",
		})
	end,
}
