return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		local config = require("noice")
		config.setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = false,
			},
		})
	end,
	vim.keymap.set("n", "<leader>nl", function()
		require("noice").cmd("last")
	end),
	vim.keymap.set("n", "<leader>nh", function()
		require("noice").cmd("history")
	end),
	vim.keymap.set("n", "<leader>na", function()
		require("noice").cmd("all")
	end),
	vim.keymap.set("n", "<leader>nd", function()
		require("noice").cmd("dismiss")
	end),
}
