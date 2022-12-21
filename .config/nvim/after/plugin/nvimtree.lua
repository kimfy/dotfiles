-- Nvim-Tree
vim.keymap.set("n", "<leader>FT", function()
  require('nvim-tree.api').tree.toggle()
end)

vim.keymap.set("n", "<leader>FF", function()
  require('nvim-tree.api').tree.focus()
end)

