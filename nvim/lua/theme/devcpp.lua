local Millionaire = {}

function Millionaire.setup()
	vim.cmd('set number')
	vim.cmd('set nowrap')
	vim.cmd('set syntax')
	vim.cmd('set tabstop=6')
	vim.cmd('set shiftwidth=6')
	vim.cmd('set termguicolors')
	vim.cmd('set background=dark')
	vim.cmd('colorscheme desert')
	vim.cmd('highlight clear')

	vim.cmd('let g:colors_name = "desert"')

	vim.cmd('hi Normal guifg=#ffcb8b guibg=Black')

	vim.cmd('hi Visual guifg=Red guibg=Blue')

	vim.cmd('hi Comment guifg=Gray')

	vim.cmd('hi String guifg=#c3e88d')

	vim.cmd('hi Identifier guifg=#c3e88d')


	vim.cmd('hi Constant guifg=#d1423e')

	vim.cmd('hi Keyword guifg=#fa3836')

	vim.cmd('hi Function guifg=#ff6348')

	vim.cmd('hi JavaScriptBraces guifg=White')

	vim.cmd('hi JavaScriptParens guifg=White')

	vim.cmd('hi Statement guifg=#c28ee4')

	vim.cmd('hi Conditional guifg=#d1423e gui=bold')

	vim.cmd('hi Directory guifg=#f49514')

	vim.cmd('hi goType guifg=Orange gui=bold')

	vim.cmd('hi LineNR guifg=#eb4d4b')

	vim.cmd('hi @match.paren guifg=Green')

	vim.cmd('hi @number guifg=#e55cf4')
	vim.cmd('hi @boolean guifg=#f49514')
	vim.cmd('hi @variable.member guifg=#f49514')
	vim.cmd('hi @variable.parameter guifg=#bec5d4')

	vim.cmd('hi Type guifg=White')

	vim.cmd('hi @variable guifg=#f49514')
	vim.cmd('hi @property guifg=#cb4387')

	vim.cmd('hi @type.builtin guifg=#5cc761')

	vim.cmd('set cursorline')

	vim.cmd('highlight Cursor guibg=#cef782')

	vim.cmd('highlight CursorLine guifg=#60ea5f guibg=#043c0a')

	vim.cmd('set guicursor=n-v-c:block-Cursor')
	vim.cmd('set guicursor+=i:ver100-iCursor')
	vim.cmd('set guicursor+=n-v-c:blinkon0')
	vim.cmd('set guicursor+=i:blinkwait10')
end

return Millionaire
