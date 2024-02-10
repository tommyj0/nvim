vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
        offsets = {{filetype = "NvimTree", text = "", padding = 1}},
        show_buffer_icons = true,
    }
}

