return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    local config = require("nvim-surround")
    config.setup({})
  end,
}
