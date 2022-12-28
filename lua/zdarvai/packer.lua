-- yt: https://www.youtube.com/watch?v=w7i4amO_zaE
-- github: https://github.com/ThePrimeagen/init.lua

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end
  })

  -- Autocompletion framework
  use("hrsh7th/nvim-cmp")
  use({
    -- cmp LSP completion
    "hrsh7th/cmp-nvim-lsp",
    -- cmp Snippet completion
    "hrsh7th/cmp-vsnip",
    -- cmp Path completion
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    after = { "hrsh7th/nvim-cmp" },
    requires = { "hrsh7th/nvim-cmp" },
  })
  -- See hrsh7th other plugins for more great completion sources!
  -- Snippet engine
  use('hrsh7th/vim-vsnip')
  -- Adds extra functionality over rust analyzer
  use("simrat39/rust-tools.nvim")

  -- Optional
  use("nvim-lua/popup.nvim")


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('nvim-lua/completion-nvim')

  use('Shougo/deoplete.nvim')
  use('vim-airline/vim-airline')
  use('davidhalter/jedi-vim')
  use('zchee/deoplete-jedi')
  use('jiangmiao/auto-pairs')
  use('scrooloose/nerdtree')
  use("github/copilot.vim")
  

end)
