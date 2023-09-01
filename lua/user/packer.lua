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
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use{ "catppuccin/nvim", as = "catppuccin" }
	use("wbthomason/packer.nvim")
  use("kyazdani42/nvim-web-devicons")
	use("norcalli/nvim-colorizer.lua")
  use("andweeb/presence.nvim")
  use("folke/which-key.nvim")
  use("nvim-treesitter/nvim-treesitter-context")
  use("nvim-lua/plenary.nvim")
  use({
    "neovim/nvim-lspconfig",
    config = function()
        require("lsp.lsp")
    end,
  })
  use("onsails/lspkind-nvim")
  use({
      "L3MON4D3/LuaSnip",
      -- follow latest release.
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
end)
