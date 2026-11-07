return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Automatically update parsers when updating the plugin
    lazy = false,        -- Load early for syntax highlighting
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            callback = function() 
                pcall(vim.treesitter.start)
            end,
        })
    local parsers = { "vimdoc", "lua", "vim", "markdown" }
    require("nvim-treesitter").install(parsers)
    end,
  },
}

