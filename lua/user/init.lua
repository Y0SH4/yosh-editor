require("user.packer")
require("user.colorscheme.catppuccin")
require("user.options")
require("user.keymaps")
require("user.whichkey")
require("user.nvim-tree")
require("user.nvim-treesitter")
require("user.nvim-treesitter-context")
require("user.lualine")

local themeStatus, catppuccin = pcall(require, "catppuccin")

if themeStatus then
    vim.cmd("colorscheme catppuccin")
else
    return
end