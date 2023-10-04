local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	--"tribela/vim-transparent",

	"alvan/vim-closetag",
	"tpope/vim-commentary",

	"glepnir/zephyr-nvim",

	"Lokaltog/vim-monotone",

	"cocopon/iceberg.vim",

	"jnurmine/Zenburn",

	"williamboman/mason.nvim",

	{ 'rose-pine/neovim',         name = 'rose-pine' },

	"windwp/nvim-ts-autotag",

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},

	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
		},
	},

	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			{
				'neovim/nvim-lspconfig',
			},

			{ 'williamboman/mason.nvim' },

			{ 'williamboman/mason-lspconfig.nvim' },

			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	},

	{ "ellisonleao/gruvbox.nvim", priority = 1000 },

	"preservim/nerdtree",

	"dylanaraps/wal.vim",

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
	},

	{ "lukas-reineke/indent-blankline.nvim" },

	{
		"malbertzard/inline-fold.nvim",

		opts = {
			defaultPlaceholder = "…",
			queries = {
				svelte = {
					{ pattern = 'class="([^"]*)"' }, -- classes in html
					{ pattern = 'href="(.-)"' }, -- hrefs in html
					{ pattern = 'src="(.-)"' }, -- HTML img src attribute
				}
			},
		}
	}

}, {})

require('cmp')
require('lsp')
require('theme')
require('mapping')
require('treesitter')
