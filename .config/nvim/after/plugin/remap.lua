local Remap = require("kimiversen.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", function()
  require('telescope.builtin').git_files()
end)

nnoremap("<leader>kf", function()
  require('telescope.builtin').find_files()
end)

nnoremap("<leader>kd", function()
  require('telescope.builtin').lsp_type_definitions()
end)

nnoremap("<leader>kb", function()
    require('telescope.builtin').buffers()
end)

nnoremap("<leader>ks", function()
    require('telescope.builtin').grep_string()
end)

-- Center file on movement
nnoremap("<C-u>",  "<C-u>zz")
nnoremap("<C-d>",  "<C-d>zz")
nnoremap("n",  "nzz")
nnoremap("N",  "Nzz")
nnoremap("G",  "Gzz")
