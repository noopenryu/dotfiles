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

-- nvim clipboard
vim.opt.clipboard = 'unnamedplus'

-- disable legacy plugins
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- disable netrw replace by nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- disable arrow keys in nvim
local modes = { "n", "i", "v" }
local arrows = { "<Up>", "<Down>", "<Left>", "<Right>" }

for _, mode in ipairs(modes) do
  for _, key in ipairs(arrows) do
    vim.keymap.set(mode, key, "<nop>", { silent = true, desc = "Disable arrow keys" })
  end
end
