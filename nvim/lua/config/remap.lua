vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- indentation
vim.keymap.set("i", "<C-j>", "<C-d>")
vim.keymap.set("i", "<C-k>", "<C-t>")
vim.keymap.set("n", "<C-j>", "<0")
vim.keymap.set("n", "<C-k>", ">0")
vim.keymap.set("v", "<C-j>", "<")
vim.keymap.set("v", "<C-k>", ">")

-- select word
vim.keymap.set("n", "gw", "vaw", {noremap=true})
vim.keymap.set("v", "gw", "aw", {noremap=true})

-- line movement
vim.keymap.set("n", "<A-j>", "<cmd>m+1<CR>", {noremap=true})
vim.keymap.set("n", "<A-k>", "<cmd>m-2<CR>", {noremap=true})
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {noremap=true})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {noremap=true})
vim.keymap.set("n", "<A-C-j>", "yyp", {noremap=true})
vim.keymap.set("n", "<A-C-k>", "yyP", {noremap=true})

-- copy paste remaps
vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")
