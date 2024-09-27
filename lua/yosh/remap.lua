vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected lines down
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv")

-- Move selected lines up
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv")
