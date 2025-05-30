vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
use{'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'}

  use{ 'nvim-treesitter/playground' }

use{'ThePrimeagen/harpoon' }

use {'mbbill/undotree'} 

use {'tpope/vim-fugitive'} 
end)
