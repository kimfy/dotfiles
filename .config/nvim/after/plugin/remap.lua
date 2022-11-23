local Remap = require("kimiversen.keymap")
local nmap = Remap.nmap
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

nnoremap("<C-p>", function()
  require('telescope.builtin').git_files()
end)

nnoremap("<leader>kf", function()
  require('telescope.builtin').find_files()
end)

nnoremap("<leader>kd", function()
  require('telescope.builtin').lsp_definitions()
end)

nnoremap("<leader>kr", function()
  require('telescope.builtin').lsp_references()
end)

nnoremap("<leader>kb", function()
    require('telescope.builtin').buffers()
end)

nnoremap("<leader>tf", function()
    require('telescope.builtin').live_grep()
end)

-- coc
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
inoremap("<c-space>", "coc#refresh()", opts)
-- coc-automcompletion
-- Tab for next element
inoremap("<Tab>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], opts)
-- Shift+Tab for previous element
inoremap("<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
-- Enter to complete suggestion
inoremap("<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
--nnoremap("<CR>", function() 
--end)

function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

-- Space-d to show documentation
nnoremap("<leader>d", function()
  _G.show_docs()
end, {silent = true})


-- Center file on movement
nnoremap("<C-u>",  "<C-u>zz")
nnoremap("<C-d>",  "<C-d>zz")
nnoremap("n",  "nzz")
nnoremap("N",  "Nzz")
nnoremap("gg", "gg0")
nnoremap("G",  "Gzz0")


-- Nvim-Tree
nnoremap("<leader>ft", function() 
  require('nvim-tree.api').tree.toggle()
end)
 
nnoremap("<leader>ff", function() 
  require('nvim-tree.api').tree.focus()
end)
 
-- 'mg979/vim-visual-multi'
vim.keymap.set(
    {"n"},
    "<C-k>",
    ":call vm#commands#add_cursor_up(0, v:count1)<cr>",
    { noremap = true, silent = true }
) 

vim.keymap.set(
    {"n"},
    "<C-j>",
    ":call vm#commands#add_cursor_down(0, v:count1)<cr>",
    { noremap = true, silent = true }
)
