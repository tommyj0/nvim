-- import map func
local map = require("tjvim.utils").map

-- leader keys
map("n", "<leader>n", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>w", ":w<CR>", { silent = true })
map("n", "<leader>q", ":q<CR>", { silent = true })
map("n", "<leader>c", ":bdelete!<CR>", { silent = true })
map("n", "<leader>/", ":normal gcc<CR> :+1<CR>", { silent = true })
map("v", "<leader>/", ":normal gcc<CR>", { silent = true })
map("n", "<leader>p", ":Lazy sync<CR>", { silent = true })
map("n", "<leader>o", ":Telescope<CR>", { silent = true })
map("n", "<leader>e", ":Neotree toggle<CR>")
map("n", "<leader>rc", ':!clang "%:p" -Wall -Wextra -o out.exe && out.exe <CR>')
map("n", "<leader>r+", ':!clang++ "%:p" -Wall -Wextra -o out.exe && out.exe<CR>')
map("n", "<leader>rp", ':!python "%:p" <CR>')
map("n", "<leader>m", ':!make<CR>')
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- window resize
map("n", "<C-left>", ":vertical resize +3<CR>")
map("n", "<C-right>", ":vertical resize -3<CR>")
map("n", "<C-up>", ":resize -2<CR>")
map("n", "<C-down>", ":resize +2<CR>")

-- window navigation
map("n", "<C-h>", ":wincmd h<CR>", { silent = true })
map("n", "<C-j>", ":wincmd j<CR>", { silent = true })
map("n", "<C-k>", ":wincmd k<CR>", { silent = true })
map("n", "<C-l>", ":wincmd l<CR>", { silent = true })

-- buffer navigation
map("n", "<S-l>", ":BufferLineCycleNext<CR>")
map("n", "<S-h>", ":BufferLineCyclePrev<CR>")
map("n", "<A-h>", ":BufferLineMovePrev<CR>")
map("n", "<A-l>", ":BufferLineMoveNext<CR>")

-- line shifting
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")
map("n", ">", ":> <CR>", { silent = true })
map("n", "<", ":< <CR>", { silent = true })

-- lsp mappings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")

-- movement
map("n", "=", "10k")
map("n", "-", "10j")

-- characters
map("i", "£", "#")
