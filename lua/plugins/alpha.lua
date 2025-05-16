return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#bdae93", bold = true })

    dashboard.section.header.val = {
      [[                                                                ]],
      [[                                         ,,                     ]],
      [[                                         db                     ]],
      [[                                                                ]],
      [[`7MMpMMMb.  .gP"Ya   ,pW"Wq.`7M'   `MF'`7MM  `7MMpMMMb.pMMMb.  ]],
      [[  MM    MM ,M'   Yb 6W'   `Wb VA   ,V    MM    MM    MM    MM  ]],
      [[  MM    MM 8M"""""" 8M     M8  VA ,V     MM    MM    MM    MM  ]],
      [[  MM    MM YM.    , YA.   ,A9   VVV      MM    MM    MM    MM  ]],
      [[.JMML  JMML.`Mbmmd'  `Ybmd9'     W     .JMML..JMML  JMML  JMML.]],
      [[                                                                ]],
      [[                                                                ]],
    }


    dashboard.section.header.opts = {
      hl = "AlphaHeader",
      position = "center",
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  > Find file", ":Telescope find_files <CR>"),
      dashboard.button("l", "  > Lazy", ":Lazy <CR>"),
      dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
    }


    local handle = io.popen('fortune')
    local fortune = handle:read("*a")
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd [[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
  end
}
