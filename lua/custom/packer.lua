-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Color Scheme.
  use { "savq/melange-nvim" }
  -- Tree Sitter -- For parsing out files and syntactical highlighting.
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
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
  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
 
end)
