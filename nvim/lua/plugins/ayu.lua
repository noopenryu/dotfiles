return {
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    lazy = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = true, -- Set to true for the mirage variant
        terminal = true,
        overrides = {
          Normal = { bg = "None" },
          NormalFloat = { bg = "none" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          VertSplit = { bg = "None" },
          CursorLine = { bg = "#1b2735" },
          CursorLineNr = { fg = "#e6b450", bold = true },
          LineNr = { fg = "#707a8c" },
        }
      })
      vim.cmd("colorscheme ayu-mirage")
    end,
  },
}

