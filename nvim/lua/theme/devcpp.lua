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

	vim.cmd('hi Comment guifg=#f1c40f')

	vim.cmd('hi String guifg=#c3e88d')

	vim.cmd('hi Identifier guifg=#c3e88d')

	vim.cmd('hi Type guifg=White')

	vim.cmd('hi Constant guifg=#d1423e')

	vim.cmd('hi Keyword guifg=#ff5252')

	vim.cmd('hi Function guifg=#1086ce')

	vim.cmd('hi JavaScriptBraces guifg=White')

	vim.cmd('hi JavaScriptParens guifg=White')

	vim.cmd('hi Statement guifg=#c28ee4')

	vim.cmd('hi Conditional guifg=#d1423e gui=bold')

	vim.cmd('hi Directory guifg=#82aaff')

	vim.cmd('hi goType guifg=Orange gui=bold')

	vim.cmd('hi LineNR guifg=#eb4d4b')

	vim.cmd('hi @number guifg=#f39c12')
	vim.cmd('hi @boolean guifg=#82a9fe')
	vim.cmd('hi @variable guifg=#ffcb8b')
	vim.cmd('hi @variable.member guifg=#82aaff')
	vim.cmd('hi @variable.parameter guifg=#bec5d4')
	vim.cmd('hi @property guifg=#e55cf4')
end

return Millionaire
