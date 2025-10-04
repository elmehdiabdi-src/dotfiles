require('nvim-treesitter.configs').setup {
	ensured_installed = {
		"ts_ls",
		"ts_utils",
	},

	sync_install = false,

	auto_install = false,

	incremental_selection = { enable = false },

	textobjects = { enable = false },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
