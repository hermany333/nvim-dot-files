return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      transparent = false,       -- Enable/disable background transparency
      theme = "wave",            -- Theme options: "wave", "dragon", "lotus"
      background = {
        dark = "dragon",         -- Use "wave" theme for dark mode
        light = "lotus",         -- Use "lotus" theme for light mode
      },
      integrations = {
        treesitter = true,         -- Enable Treesitter integration
        lsp = true,                -- Enable LSP highlights
        telescope = true,          -- Enable Telescope integration
      },
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme kanagawa")
  end,
}
