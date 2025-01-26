-- After altering this run :PackerSync to update the plugins.
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Color Scheme.
  use { "savq/melange-nvim" }
  -- Tree Sitter -- For parsing out files and syntactical highlighting.
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }
  -- Git integration in nvim. 
  use {'tpope/vim-fugitive'}
  -- Status line
  use {'ojroques/nvim-hardline'}
  -- Buff tabs.
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Highlighting for whatever is under the cursor.
  use { 'yamatsum/nvim-cursorline' }
  -- Better tmux intergration.
  use { "aserowy/tmux.nvim"}
  -- See classes and functions within a file.
  use { "stevearc/aerial.nvim" }
  -- For writing Latex.
  use { "lervag/vimtex" }
  -- For python REPL.
  use { 'Vigemus/iron.nvim' }
  -- Setting markers.
  use { 'chentoast/marks.nvim' }
  -- Edit directories
  use { 'elihunter173/dirbuf.nvim' }
  -- Highlight symbol under cursor, automatically
  use { "RRethy/vim-illuminate" }
  -- leader keybindings helper window
  use { "folke/which-key.nvim" }
  -- LSP
  --------
  -- Langauge Server configurations
  use { 'neovim/nvim-lspconfig' }
  -- fancy icons in LSP completion prompt
  use { "onsails/lspkind-nvim" }
  -- autocomplete framework
  use { "hrsh7th/nvim-cmp" }
  -- LSP-based source for cmp
  use { "hrsh7th/cmp-nvim-lsp" }
  -- Show callable signature when writing invocation
  use { "ray-x/lsp_signature.nvim" }
  -- Navigation
  --------
  -- Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Telescope based file browser.
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  -- File tree explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
  }

end)
