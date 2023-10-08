vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    -- navigate file tree like I do with regular files
    number = true,
    relativenumber = true,
  }
})
local api = require("nvim-tree.api")

-- custom key map

-- open file tree, navigate to file in folder
vim.keymap.set("n", "<leader>ft", function()
  local buf_name = vim.api.nvim_buf_get_name(0)
  local is_tree_buf = api.tree.is_tree_buf(0)
  api.tree.toggle()

  -- find_file only if we are not in a tree buffer
  if not is_tree_buf then
    api.tree.find_file(buf_name)
  end
end)

