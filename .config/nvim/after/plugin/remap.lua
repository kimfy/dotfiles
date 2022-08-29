local Remap = require("kimiversen.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", function()
  require('telescope.builtin').git_files()
end)
