return {

  ------------------------------------------------------------------
  -- Copilot (inline suggestions)
  ------------------------------------------------------------------
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = false,
        gitcommit = true,
        yaml = true,
      },
    },
  },

  ------------------------------------------------------------------
  -- Copilot Chat
  ------------------------------------------------------------------
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    opts = {
      debug = false,
      show_help = true,
      window = {
        layout = "vertical", -- change to "float" if preferred
        width = 0.4,
      },
    },
    keys = {
      { "<leader>cc", "<cmd>CopilotChat<cr>", desc = "Copilot Chat" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Explain selection" },
      { "<leader>cr", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Review selection" },
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Fix selection" },
      { "<leader>ct", "<cmd>CopilotChatTests<cr>", mode = "v", desc = "Generate tests" },
    },
  },

}
