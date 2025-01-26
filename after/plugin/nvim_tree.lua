-- Commands:
-- :NvimTreeOpen Open the tree.
-- :NvimTreeToggle Open or close the tree. Takes an optional path argument.
-- :NvimTreeFocus Open the tree if it is closed, and then focus on the tree.
-- :NvimTreeFindFile Move the cursor in the tree for the current buffer, opening folders if needed.
-- :NvimTreeCollapse Collapses the nvim-tree recursively.

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
