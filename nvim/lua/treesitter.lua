require('nvim-treesitter.configs').setup {
	injections = {
		module_path = "nvim-treesitter.injections",
		macro_injections = {
			rust = {
				html = { "html" },
				query_as = { "typescript" },
			}
		},
	},

	autotag = {
		enable = true,
		enable_close = true,
		enable_rename = true,
		enable_close_on_slash = true,
		filetypes = { "html", "xml", "rust" },
	},

	sync_install = false,

	auto_install = true,

	incremental_selection = { enable = true },

	textobjects = { enable = true },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

}
