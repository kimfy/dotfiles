return {
  "folke/neodev.nvim",
  -- Create key bindings easily based on the command you just typed
  "folke/which-key.nvim",
  -- Theme
  "folke/tokyonight.nvim",
  -- Great fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},
  { "folke/neoconf.nvim", cmd = "Neoconf" },

  -- treesitter: better syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  { "neovim/nvim-lspconfig", dependencies = {"hrsh7th/cmp-nvim-lsp" }},
  { "hrsh7th/nvim-cmp", dependencies = {"L3MON4D3/LuaSnip" }},

  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },
}
