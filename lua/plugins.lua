-- Automatically install and set up packer.nvim on any machine which this configuration cloned to.
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- plugins list
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- My plugins here
  
  ----------------
  -- UI related 
  ----------------
  
  -- icons
  use {'nvim-tree/nvim-web-devicons'}

  -- statusline 
  use {
    'nvim-lualine/lualine.nvim',
    --requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }

  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'} 
  
	-- Colorscheme: catppuccin
	use { "catppuccin/nvim", as = "catppuccin" }

  -- notification manager
  use 'rcarriga/nvim-notify'

  -- nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- to read about
  use { "folke/zen-mode.nvim" }






  ----------------------
  -- Language related
  ----------------------
  
  ----- markdown
  use { "preservim/vim-markdown", ft = { "markdown" } }

  -- markdown-preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  ----- Latex
  use 'lervag/vimtex'




  -----------------------------
  -- Editor function related
  -----------------------------
  -- fzf
  use ("junegunn/fzf.vim")

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- file browser
  use {
      "nvim-telescope/telescope-file-browser.nvim",
      requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  -- file explorer tree
  use('nvim-tree/nvim-tree.lua')

  --fcitx
  use 'h-hg/fcitx.nvim'

  -----------------
  -- LSP related
  -----------------
  
  -- lsp support
  use { 'neovim/nvim-lspconfig' }

  -- lsp install manager
  use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use {'williamboman/mason-lspconfig.nvim'}

  
  -- autocompletion
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-nvim-lua'}

  -- snippets
  use {'L3MON4D3/LuaSnip'}
  use {'saadparwaiz1/cmp_luasnip'}
  use {'rafamadriz/friendly-snippets'}

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
