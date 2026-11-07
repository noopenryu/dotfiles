vim.opt.showmatch = true      -- show matching brackets/parentheses
vim.opt.tabstop = 2           -- number of visual spaces per TAB
vim.opt.shiftwidth = 2        -- number of spaces to use for each step of (auto)indent
vim.opt.expandtab = true      -- expand TAB to spaces
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true         -- show absolute line number on current line
vim.opt.laststatus = 2        -- always show status line
vim.opt.incsearch = true      -- search as characters are typed
vim.opt.autowrite = true      -- automatically write a file on buffer switch

vim.opt.termguicolors = true

-- disable netrw replace by nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
