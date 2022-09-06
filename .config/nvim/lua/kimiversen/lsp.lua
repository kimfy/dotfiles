require'lspconfig'.pyright.setup{}
require'lspconfig'.terraformls.setup{}
require'lspconfig'.phpactor.setup{}

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = vim.lsp.buf.formatting_sync,
})
