local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim ..."
  vim.cmd [[packadd packer.nvim]]
end

-- Automcommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install plugins here
return packer.startup(function(use)
  -- Add plugins here
  use "wbthomason/packer.nvim"   -- Have packer manage itself
  use "nvim-lua/popup.nvim"      -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"    -- Useful lua functions used ny lots of plugins
  use {
        "jalvesaq/Nvim-R",
        branch = "stable"
      }                          -- Allows for a REPL of R code
  use {
        "jalvesaq/R-Vim-runtime"
      }                          -- Allows for syntax highlighting in quarto docs
  use "mllg/vim-devtools-plugin" -- Add R devtools functionality
  use "honza/vim-snippets"       -- Add snippet functionality
  use "windwp/nvim-autopairs"    -- Autopairs for code editing

  -- Colorschemes
  use "lunarvim/colorschemes"     -- A selection of various colorschemes
  use "tomasiser/vim-code-dark"
  use "EdenEast/nightfox.nvim"
  use "folke/tokyonight.nvim"

  -- cmp plugins
  use "hrsh7th/nvim-cmp"          -- The completion plugin
  use "hrsh7th/cmp-buffer"        -- buffer completions
  use "hrsh7th/cmp-path"          -- path completions
  use "hrsh7th/cmp-cmdline"       -- command line completions
  use "saadparwaiz1/cmp_luasnip"  -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip"             -- snippet engine
  use "rafamadriz/friendly-snippets" -- additional snippets

  -- LSP 
  use "neovim/nvim-lspconfig"         -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language installer

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  } 

  -- Git 
  use "lewis6991/gitsigns.nvim"
  use "tpope/vim-fugitive"

  -- Browser integration
  use "dhruvasagar/vim-open-url"

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
