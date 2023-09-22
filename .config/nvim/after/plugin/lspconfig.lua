local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)


local default_setup = function(server)
  lspconfig[server].setup({})
end

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "terraformls",
  },
  handlers = {
    default_setup,

-- Terraform
    terraformls = function()
      require("lspconfig").terraformls.setup{}
    end,

-- Lua
    lua_ls = function()
      require('lspconfig').lua_ls.setup({
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT'
            },
            diagnostics = {
              globals = {'vim'},
            },
            workspace = {
              library = {
                vim.env.VIMRUNTIME,
              }
            }
          }
        }
      })
    end,
  },
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    -- Enter key confirms completion item
    --['<CR>'] = cmp.mapping.confirm({select = false}),

-- Docs:
-- https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt
    -- Ctrl + space triggers completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
    ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), --https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt#L185
    ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), --https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt#L199C1-L199C90
    ["<CR>"] = cmp.mapping.confirm({select = false, behavior = cmp.ConfirmBehavior.Insert }),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
