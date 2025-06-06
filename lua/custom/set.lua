-- Enable line numbers (and relative line numbers)
vim.opt.nu = true
vim.opt.relativenumber = true

-- More natural split opening.
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.hlsearch = true

-- Change tabbing.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Disable swap file and make long running undo logging.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

-- Better scrolling.
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "79"
