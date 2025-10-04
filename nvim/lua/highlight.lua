function _G.get_treesitter_captures()
	return vim.inspect(vim.treesitter.get_captures_at_cursor())
end

vim.o.statusline = table.concat({
	" %f",                            -- filename
	" %m",                            -- [+] if modified
	" %r",                            -- [RO] if readonly
	" [%y]",                          -- filetype
	" [%{v:lua.get_treesitter_captures()}]", -- syntax→highlight group
	" %l:%c",                         -- line:column
	" (%p%%)"                         -- percent through file
})

vim.o.laststatus = 3
