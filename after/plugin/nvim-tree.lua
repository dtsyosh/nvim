-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ";f", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

-- OR setup with some options
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  },
  sort_by = "case_sensitive",
  view = {
    width = 40,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
  },
})
