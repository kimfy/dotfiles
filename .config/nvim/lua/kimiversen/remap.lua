-- Center file on movement
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "gg","gg0")
vim.keymap.set("n", "G", "Gzz0")

-- Move selection up/down with J, K. Respects indentation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Make current file executable
vim.keymap.set("n", "<leader>x", function() 
  if os.getenv("OS") == 'Windows_NT' then
    print("chmod +x % is not supported on Windows")
  else
    vim.nvim_command("<cmd>!chmod +x %<CR>")
  end
end,
{silent = true})

-- Tab management
-- Create a new tab
  vim.keymap.set("n", "tc", ":tabe<CR>")
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

