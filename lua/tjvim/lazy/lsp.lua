return {
  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  "nvim-treesitter/playground",

  "mbbill/undotree",

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
      -- LSP Support
      { "neovim/nvim-lspconfig" },             -- Required
      { "williamboman/mason.nvim" },           -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },         -- Required
      { "hrsh7th/cmp-nvim-lsp" },     -- Required
      { "hrsh7th/cmp-buffer" },       -- Optional
      { "hrsh7th/cmp-path" },         -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-nvim-lua" },     -- Optional

      -- Snippets
      { "L3MON4D3/LuaSnip" },             -- Required
      { "rafamadriz/friendly-snippets" }, -- Optional
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
}


