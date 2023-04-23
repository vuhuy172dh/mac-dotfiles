local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'kyazdani42/nvim-web-devicons'
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'onsails/lspkind.nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  -- code highlightings
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server
  --  use 'MunifTanjim/prettier.nvim'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- text
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'tpope/vim-surround'
  use 'mg979/vim-visual-multi'

  -- file explorer
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-tree/nvim-tree.lua'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua' --Color code highlightings

  use 'lukas-reineke/indent-blankline.nvim' -- add indentation guides to all lines (including empty lines)

  -- git 
  -- use 'dinhhuy258/git.nvim'
  use 'tpope/vim-fugitive'
  use 'rbong/vim-flog'
  use 'lewis6991/gitsigns.nvim'

  -- progress
  use 'j-hui/fidget.nvim'

  -- show diagnotics (errors, warning)
  use 'folke/trouble.nvim'

  -- fold code 
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- comment
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
end)
