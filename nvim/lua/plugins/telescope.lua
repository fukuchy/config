return {
    "nvim-telescope/telescope.nvim", 
    branch = "0.1.x", 
    dependencies = {
        "nvim-lua/plenary.nvim", 
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}, 
        "nvim-tree/nvim-web-devicons", 
    }, 
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = {"smart"},
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, 
                        ["<C-j>"] = actions.move_selection_next, 
                        ["<C-j>"] = actions.send_selected_to_qflist + actions.open_qflist, 
                    }, 
                }, 
            }, 
        })
        telescope.load_extension("fzf")

        local keymap = vim.keymap

        keymap.set("n", "ff", "<cmd>Telescope find_files<cr>")
        keymap.set("n", "fr", "<cmd>Telescope oldfiles<cr>")
    end,
}
