vim.g.mapleader = " "

require("config.lazy")

-- Line number color
local normal_bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Normal")), "bg")
vim.api.nvim_set_hl(0, "LineNr", { fg = "#bdae93", bg = normal_bg, bold = true })

-- Telescope Border Color
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#bdae93" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#bdae93" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#bdae93" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#bdae93" })

-- Buffer Keymaps
vim.keymap.set("n", "b]", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "b[", ":bprev<CR>", { noremap = true, silent = true })

vim.wo.relativenumber = true
vim.opt.clipboard = "unnamedplus"
