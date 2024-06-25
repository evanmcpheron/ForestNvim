vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({"n", "i"}, "<C-w>", "<Esc>ggVG=<cr>:w<cr>")
vim.keymap.set("n", "<C-a>", "ggVG")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>yap", "Va{", {desc = "Yank around code block"})
vim.keymap.set({"i", "n"}, "<C-l>", "<C-c>$")
vim.keymap.set({"i", "n"}, "<C-h>", "<C-c>^")
vim.keymap.set({"i", "n"}, "<C-d>", "<C-c>Vyp", {desc = "Duplicate line down"})
