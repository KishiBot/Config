vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- indentation
vim.keymap.set("i", "<C-j>", "<C-d>")
vim.keymap.set("i", "<C-k>", "<C-t>")
vim.keymap.set("n", "<C-j>", "<0")
vim.keymap.set("n", "<C-k>", ">0")
vim.keymap.set("v", "<C-j>", "<")
vim.keymap.set("v", "<C-k>", ">")

-- line movement
vim.keymap.set("n", "<A-j>", "<cmd>m+1<CR>", {noremap=true})
vim.keymap.set("n", "<A-k>", "<cmd>m-2<CR>", {noremap=true})
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {noremap=true})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {noremap=true})
vim.keymap.set("n", "<A-C-j>", "yyp", {noremap=true})
vim.keymap.set("n", "<A-C-k>", "yyP", {noremap=true})

-- movement
vim.keymap.set("n", "<C-d>", "<C-d>zz", {noremap=true})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {noremap=true})
vim.keymap.set("n", "n", "nzzzv", {noremap=true})
vim.keymap.set("n", "N", "Nzzzv", {noremap=true})

-- copy paste remaps
vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")
vim.keymap.set("v", "<leader>o", "\"_d")

-- Search
vim.keymap.set("n", "<leader>/", ":noh<CR>")

-- C-c to esc cause double c-c doesn't work for visual block mode
vim.keymap.set("i", "<C-c>", "<esc>");

-- Remove white space at the end
vim.keymap.set({"n", "x"}, "<leader>rs", ":s/\\s\\+$//<CR>:noh<CR>", {noremap=true, silent=true})
