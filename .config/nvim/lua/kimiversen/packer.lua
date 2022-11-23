-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  -- Plugin manager
  use 'wbthomason/packer.nvim'
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Collection of community-contributed configurations for the built-in language server client in Nvim core.
  -- see :help lspconfig
  use 'neovim/nvim-lspconfig'
 
  -- The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it:
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end
  } 

  use {
    'neoclide/coc.nvim', branch = 'release'
  } 

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use {
    'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', }
  }

--  use {
--    'm-demare/hlargs.nvim',
--    requires = { 'nvim-treesitter/nvim-treesitter' }
--  }

  -- Highlight pattern searching and substitutes
  use {
    'markonm/traces.vim'
  }

  -- Multi-cursor 
  use {
    'mg979/vim-visual-multi'
  }

  use {
    'ThePrimeagen/vim-be-good'
  }

  -- Dim inactive windows
  use 'sunjon/shade.nvim'

  -- Dim inactive code
  use 'folke/twilight.nvim'
end)
