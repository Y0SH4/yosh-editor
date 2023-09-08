return require("packer").startup(function()
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = function()
      require("user.nvim-treesitter")
    end,
  })
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use("nvim-lua/plenary.nvim")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = {{ "nvim-lua/plenary.nvim" }},
    config = function()
      require('user.telescope')
    end
  })
  use{"catppuccin/nvim", as = "catppuccin"}
	use("wbthomason/packer.nvim")
  use("kyazdani42/nvim-web-devicons")
  use("andweeb/presence.nvim")
  use("folke/which-key.nvim")
  use("nvim-treesitter/nvim-treesitter-context")
  
  use({
    "neovim/nvim-lspconfig",
    config = function()
      require("lsp.lsp")
    end,
  })
  use("onsails/lspkind-nvim")
  use({
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
  })

  -- cmp: Autocomplete
  use({
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("lsp.cmp")
    end,
  })

  use("hrsh7th/cmp-nvim-lsp")
  use({ "hrsh7th/cmp-path", after = "nvim-cmp" })
  use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })

  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("lsp.null-ls")
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })

  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.gitsigns")
    end,
  })

  use({
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("user.mason-lsp")
    end,
  })

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
        require("colorizer").setup({ "*" })
    end,
  })

  use({
    "windwp/nvim-autopairs",
    config = function()
        require("user.autopairs")
    end,
  })

  use({
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("user.blankline")
    end,
  })

  use ({
    "RRethy/vim-illuminate",
    config = function()
      require("user.illuminate")
    end,
  })

  use ({
    "akinsho/toggleterm.nvim", 
    config = function()
      require("user.toggleterm")
    end,
  })

  use ({ 
    "mhartington/formatter.nvim",
    config = function()
      require("lsp.formatter")
    end, 
  })

  use "numToStr/Comment.nvim"
  use "ThePrimeagen/harpoon"
  
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }

  use ({
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "js-debug-adapter",
        "prettier",
        "typescript-language-server"
      }
    }
  })

  use ({
    "mfussenegger/nvim-lint",
    config = function()
      require("lsp.lint")
    end
  })
end)
