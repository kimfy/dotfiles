require'lspconfig'.pyright.setup{}
--require'lspconfig'.terraformls.setup{}
--require'lspconfig'.phpactor.setup{
--}
require'lspconfig'.intelephense.setup{}

require'lspconfig'.terraformls.setup{}
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = vim.lsp.buf.formatting_sync
})

require'lspconfig'.tsserver.setup{}

--require('hlargs').setup()
