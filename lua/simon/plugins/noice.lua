return {
  "folke/noice.nvim",
  opts = {
    background_colour = "#000000"
  },
  config = function()
    require("noice").setup({
      -- add any options here
      background_colour = "#000000",
      routes = {
        -- configuration
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  }
}
