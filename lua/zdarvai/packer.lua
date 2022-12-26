-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('Shougo/deoplete.nvim')
  use('vim-airline/vim-airline')
  use('davidhalter/jedi-vim')
  use('zchee/deoplete-jedi')
  use('jiangmiao/auto-pairs')
  use('scrooloose/nerdtree')
  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  

end)
