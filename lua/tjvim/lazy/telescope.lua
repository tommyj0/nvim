return {

  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false, -- telescope did only one release, so use HEAD for now
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
    "nvim-lua/plenary.nvim",
  },

  config = true,
  keys = {
    { "<leader>f", "<cmd>Telescope find_files<CR>", desc = "Telescope Find" },
    { "<leader>k", "<cmd>Telescope keymaps<CR>",    desc = "Telescope Keymaps" },
    { "<leader>g", "<cmd>Telescope git_files<CR>",  desc = "Telescope Git Files" },
    {
      "<leader>s",
      function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end,
      desc = "Telescope GREP"
    },
  }
}
