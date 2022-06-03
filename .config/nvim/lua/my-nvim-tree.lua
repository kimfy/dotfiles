-- Source: https://github.com/kyazdani42/nvim-tree.lua
require'nvim-tree'.setup {
  --Lets just use defaults
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Space>tt', ':NvimTreeToggle<CR>', opts)
map('n', '<Space>tr', ':NvimTreeRefresh<CR>', opts)
map('n', '<Space>tf', ':NvimTreeFindFile<CR>', opts)

