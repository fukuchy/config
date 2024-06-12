return {
    "goolord/alpha-nvim", 
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    event = "VimEnter",
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                               __                ]],
            [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
            [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
            [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
            [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
            [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
        }

    dashboard.section.buttons.val = {
        dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
        dashboard.button("ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
        dashboard.button("ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
        dashboard.button("fr", "  > Recent File", "<cmd>Telescope oldfiles<CR>"),
        dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end, 
}
