return require("packer").startup(function()
	use("wbthomason/packer.nvim")
  use("kyazdani42/nvim-web-devicons")
	use("norcalli/nvim-colorizer.lua")
  use {
    "andweeb/presence.nvim",
    config = require("config.presence")
  }
  use {
    "kyazdani42/nvim-tree.lua",
    config = require("config.nvimtree")
  }
end)