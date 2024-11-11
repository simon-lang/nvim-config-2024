return {
    "nvim-pack/nvim-spectre",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    cmd = "Spectre",
    opts = {
        open_cmd = 'vnew',
        live_update = true,
        line_sep_start = '┌-----------------------------------------',
        result_padding = '¦  ',
        line_sep       = '└-----------------------------------------',
        highlight = {
            ui = "String",
            search = "DiffChange",
            replace = "DiffDelete"
        },
    },
    keys = {
        -- Search in all files
        { "<leader>S", '<cmd>lua require("spectre").open()<CR>', desc = "Search in files (Spectre)" },
        -- Search in current file
        -- { "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', desc = "Search current word" },
        -- Search in current file for visual selection
        -- { "<leader>sw", '<cmd>lua require("spectre").open_visual()<CR>', desc = "Search current word", mode = "v" },
        -- Search in current buffer
        -- { "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', desc = "Search in current file" },
    },
}
