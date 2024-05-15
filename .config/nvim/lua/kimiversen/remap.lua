-- Center file on movement
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Go up half a page and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Go down half a page and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Go to next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Go to previous search result and center" })
vim.keymap.set("n", "gg","gg0", { desc = "Go to first line and reset cursor to first column" })
vim.keymap.set("n", "G", "Gzz0", { desc = "Go to last line and reset cursor to first column" })

-- Move selection up/down with J, K. Respects indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selection down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move selection up"})

-- Make current file executable
vim.keymap.set("n", "<leader>x", function() 
  if os.getenv("OS") == 'Windows_NT' then
    print("chmod +x % is not supported on Windows")
  else
    vim.nvim_cmd("!chmod +x %<CR>") --"<cmd>!chmod +x %<CR>")
  end
end,
{silent = true})

-- Tab management
-- Create a new tab
  vim.keymap.set("n", "tc", ":tabe<CR>", { desc = "Create new tab" })
  -- Go to next tab
  vim.keymap.set("n", "tn", "gt")
  -- Go to previous tab
  vim.keymap.set("n", "tp", "gT")
  -- Close current tab
  vim.keymap.set("n", "tq", ":tabc<CR>")

-- Terminal
  -- Enter normal mode with Escape in terminal mode
  vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
  -- Open a terminal in a new tab, enter insert mode
  vim.keymap.set("n", "<leader>tc", ":tabe +terminal<CR>i")


-- Display LSP errors
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
