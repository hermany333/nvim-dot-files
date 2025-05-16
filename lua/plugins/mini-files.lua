return {
  {
    'echasnovski/mini.files',
    version = false,
    config = function()
      vim.keymap.set("n", "<leader>fm", require("mini.files").open)
      require("mini.files").setup()
    end
  },
}
