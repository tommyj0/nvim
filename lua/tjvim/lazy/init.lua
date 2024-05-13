-- INIT
-- simple installs :)
return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },
  {
    "windwp/nvim-autopairs",
    config = true
  },
  -- {
    -- 'akinsho/bufferline.nvim',
    -- version = "v4.2.0",
    -- dependencies = 'nvim-tree/nvim-web-devicons',
    -- config = true,
  -- },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  "nvim-treesitter/playground",
  {
    "nvim-lua/plenary.nvim",
    name = "plenary",
  },
  "rrethy/vim-illuminate",
  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Undotree Toggle" },
    },
  },
  "nvim-tree/nvim-web-devicons",
  {
    "ggandor/leap.nvim",
    config = true,
  },
  {
    "numToStr/Comment.nvim",
    config = true
  },
}
