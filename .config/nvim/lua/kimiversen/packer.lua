-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Theme
  use 'folke/tokyonight.nvim'

  -- The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it:
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })


  -- The purpose of this plugin is to bundle all the "boilerplate code" necessary to have nvim-cmp (a popular completion engine) and the LSP client working together nicely. Additionally, with the help of mason.nvim, it can let you install language servers from inside neovim.
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
}

--------------------------------------------------------------------------------
-- fluff
--------------------------------------------------------------------------------
  -- Highlight pattern searching and substitutes
  use {
    'markonm/traces.vim'
  }

  -- Multi-cursor 
  use {
    'mg979/vim-visual-multi'
  }

  -- Dim inactive windows
  --use 'sunjon/shade.nvim'
end)
