local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	"tpope/vim-dadbod",

	"bytesnake/vim-graphical-preview",

	"glepnir/lspsaga.nvim",
	"zenbones-theme/zenbones.nvim",

	"yonchu/accelerated-smooth-scroll",

	{
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim"
	},

	{
		'kristijanhusak/vim-dadbod-ui',
		dependencies = {
			{ "Shougo/ddc.vim" },
			{ "vim-denops/denops.vim" },
			{ "hrsh7th/nvim-compe" },
			{ "Shougo/deoplete.nvim" },
			{ "haorenW1025/completion-nvim" },
			{ 'tpope/vim-dadbod',                     lazy = true },
			{ "kristijanhusak/vim-packager",          type = "opt" },
			{ 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
		},
		cmd = {
			'DBUI',
			'DBUIToggle',
			'DBUIAddConnection',
			'DBUIFindBuffer',
		},
		init = function()
			vim.g.dbs = {
				{ name = 'users', url = 'sqlite:////home/computer/go/src/tchatch/config/users.db' },
			}
		end,
	},

	"easymotion/vim-easymotion",

	"alvan/vim-closetag",

	"tpope/vim-commentary",

	"glepnir/zephyr-nvim",

	"Lokaltog/vim-monotone",

	"cocopon/iceberg.vim",

	"jnurmine/Zenburn",

	"williamboman/mason.nvim",

	{ 'rose-pine/neovim',                   name = 'rose-pine' },

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

require('sh')
require('cmp')
require('lsp')
require('mapping')
require('treesitter')
require("highlight")
require("theme.devcpp").setup()

vim.cmd("map  <space> <Plug>(easymotion-bd-f)")
