function _G.get_diagnostic_line_error()
	local row, col = unpack(vim.api.nvim_win_get_cursor(0))
	row = row - 1
	local diags = vim.diagnostic.get(0, { lnum = row })
	local cursor_diags = {}
	for _, d in ipairs(diags) do
		if d.col <= col and col <= (d.end_col or d.col) then
			table.insert(cursor_diags, d.message)
		end
	end
	if #cursor_diags > 0 then
		return table.concat(cursor_diags, "\n")
	else
		return ""
	end
end

vim.o.statusline = table.concat({
	" %f",                              -- filename
	-- " %y",                              -- filetype
	"%#Conditional#",                   -- filename
	" %{v:lua.get_diagnostic_line_error()}", -- syntax→highlight group
	-- " k%l:%c",                          -- line:column
	-- " (%p%%)"                           -- percent through file
})

vim.o.laststatus = 3
