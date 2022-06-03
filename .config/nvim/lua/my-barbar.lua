local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.bufferline = {
  -- Enable/disable animations
  animation = false, 
  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,
}

-- Key bindings
-- Move to previous/next
map('n', '<C-b>,', ':BufferPrevious<CR>', opts)
map('n', '<C-b>.', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<C-b><', ':BufferMovePrevious<CR>', opts)
map('n', '<C-b>>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
--map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
--map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
--map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
--map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
--map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
--map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
--map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
--map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
--map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
--map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<Space>bp', ':BufferPin<CR>', opts)
-- Close buffer
map('n', '<Space>bq', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseAllButPinned<CR>
--                 :BufferCloseAllButCurrentOrPinned<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-b>m', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Integrate with file-tree
local nvim_tree_events = require('nvim-tree.events')
local bufferline_state = require('bufferline.state')

nvim_tree_events.on_tree_open(function ()
  bufferline_state.set_offset(31, "File Tree")
end)

nvim_tree_events.on_tree_close(function ()
  bufferline_state.set_offset(0)
end)
