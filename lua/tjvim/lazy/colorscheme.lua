return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin-mocha")
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine"
  },
  {
    "rebelot/kanagawa.nvim",
    name = kanagawa,
  },
}
