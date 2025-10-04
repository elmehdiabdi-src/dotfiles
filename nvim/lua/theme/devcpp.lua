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

	vim.cmd('hi @normal guifg=#ffcb8b guibg=#222221')

	vim.cmd('hi Comment guifg=#697098')

	vim.cmd('hi String guifg=#c3e88d')

	vim.cmd('hi Identifier guifg=#c3e88d')

	vim.cmd('hi Typedef guifg=Green')

	vim.cmd('hi Constant guifg=#d1423e')

	vim.cmd('hi Keyword guifg=#c28ee4')

	vim.cmd('hi Function guifg=#82aaff')

	vim.cmd('hi JavaScriptBraces guifg=White')

	vim.cmd('hi JavaScriptParens guifg=White')

	vim.cmd('hi Statement guifg=#c28ee4')

	vim.cmd('hi Conditional guifg=#d1423e gui=bold')

	vim.cmd('hi Directory guifg=#82aaff')

	vim.cmd('hi goType guifg=Orange gui=bold')

	vim.cmd('hi LineNR guifg=#62605b')

	vim.cmd('hi @number guifg=#f38a6b')
	vim.cmd('hi @boolean guifg=#82a9fe')
	vim.cmd('hi @variable guifg=#ffcb8b')
	vim.cmd('hi @variable.member guifg=#82aaff')
	vim.cmd('hi @variable.parameter guifg=#bec5d4')
	vim.cmd('hi @property guifg=#82aaff')
end

return Millionaire
