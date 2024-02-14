vim.g.mapleader = ' '
vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('n', '<Leader>s', '<cmd>w<CR>', { noremap = true })

-- Faster window split creation and navigation
vim.keymap.set('n', '<Leader>v', '<cmd>vsplit<CR>', {})
vim.keymap.set('n', '<Leader>c', '<cmd>split<CR>', {})
vim.keymap.set('n', '<Leader>l', '<cmd>bnext<CR>', {})
vim.keymap.set('n', '<Leader>h', '<cmd>bprevious<CR>', {})
vim.keymap.set('n', '<Leader>q', '<cmd>bp <BAR> bd #<CR>', {})
-- Following is done automatically with tmux.nvim.
-- vim.keymap.set('n', '<C-j>', '<C-w>j', {})
-- vim.keymap.set('n', '<C-h>', '<C-w>h', {})
-- vim.keymap.set('n', '<C-k>', '<C-w>k', {})
-- vim.keymap.set('n', '<C-l>', '<C-w>l', {})

-- Allows one to move around highlighted lines.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move last line to current line.
vim.keymap.set("n", "J", "mzJ`z")

-- Don't overwrite buffer when pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to system clipboard.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Quick fix navigation
vim.keymap.set("n", "<leader>j", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>zz")

-- Replace current word.
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
