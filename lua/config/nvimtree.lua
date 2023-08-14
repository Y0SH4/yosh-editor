require("nvim-tree").setup({
	-- auto_close = true,
	sort_by = "case_sensitive",
	diagnostics = {
		enable = true,
	},
	view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
	renderer = {
    group_empty = true,
  },
	filters = {
    dotfiles = true,
  },
})