vim.cmd('set number')
vim.cmd('set nowrap')
vim.cmd('set syntax')
vim.cmd('set tabstop=6')
vim.cmd('set shiftwidth=6')
vim.cmd('set termguicolors')
vim.cmd('set background=dark')
vim.cmd('colorscheme gruvbox')


require('lualine').setup {
	options = {
		icons_enabled = false,
		globalstatus = true,
		theme = "auto"
	}
}

require("indent_blankline").setup {
	show_current_context = false,
	show_current_context_start = false,
}

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
	pattern = { '*.svelte', '*.html', '*.tsx', '*.vue' },
	callback = function(_)
		if not require('inline-fold.module').isHidden then
			vim.cmd('InlineFoldToggle')
		end
	end,
})
