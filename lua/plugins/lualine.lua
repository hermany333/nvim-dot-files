return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
    config = function()
        require("lualine").setup({
            options = {
                theme = "gruvbox_dark", -- Match your Kanagawa theme
                section_separators = "",
                component_separators = "",
            },
        })
    end,
}

