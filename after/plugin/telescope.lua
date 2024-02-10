local builtin = require('telescope.builtin')
-- local fb_actions = require "telescope".extensions.file_browser.actions
-- require("telescope").setup {
  -- extensions = {
    -- file_browser = {
--
      -- theme = "ivy",
      -- initial_mode = "normal",
      -- disables netrw and use telescope-file-browser in its place
      -- hijack_netrw = true,
      -- mappings = {
        -- ["i"] = {
          -- your custom insert mode mappings
        -- },
        -- ["n"] = {
          -- your custom normal mode mappings
          -- vim.api.nvim_set_keymap("n", "l", "<CR>",{silent = true}),
          -- ["<C-]>"] = fb_actions.change_cwd,
          -- ["h"] = fb_actions.goto_parent_dir
        -- },
      -- },
    -- },
  -- },
-- }

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>k', builtin.keymaps, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
-- vim{.api.nvim_set_keymap("n", "l", "<CR>",{noremap = true})

