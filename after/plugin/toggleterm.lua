vim.keymap.set("n", "<leader>tt", ":ToggleTerm size=80 direction=vertical<CR>", { noremap = true, silent = true })

return require("toggleterm").setup({})
