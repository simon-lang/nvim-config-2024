return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            width = 0.99,
            height = 0.99
          },
        },
      },
    })
  end,
}
