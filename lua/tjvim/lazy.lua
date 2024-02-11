local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- PLUGINS:
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

  -- use {'folke/tokyonight.nvim'}
  {
    "nvim-lualine/lualine.nvim",
    "kyazdani42/nvim-web-devicons",
  },

  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end
  },
  {
    "akinsho/bufferline.nvim",
    tag = "*",
    "nvim-tree/nvim-web-devicons"
  },

  "rrethy/vim-illuminate",
  "numToStr/Comment.nvim",
  "nvim-tree/nvim-web-devicons",

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  "rebelot/kanagawa.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme catppuccin-mocha]])
    end,
  },
  { "github/copilot.vim", branch = "release" },
  { "ggandor/leap.nvim" },
  {
    "nvim-neorg/neorg",
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes"
              },
            },
          },
        },
      }
    end,
    build = ":Neorg sync-parsers",
    "nvim-lua/plenary.nvim",
  },

  {
    "folke/trouble.nvim",
      "nvim-tree/nvim-web-devicons"
  },
}, {
  -- OPTS:

})
