-- INIT
-- simple installs :)
return {
  {
    "windwp/nvim-autopairs",
    config = true
  },
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
