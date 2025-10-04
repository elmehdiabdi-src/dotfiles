-- Create an augroup to avoid duplicates
local sh_group = vim.api.nvim_create_augroup("RunSHOnSave", { clear = true })

-- Set up the autocmd
vim.api.nvim_create_autocmd("BufWritePost", {
	group = sh_group,
	pattern = "*.sh",
	callback = function()
		vim.cmd("!sh " .. vim.fn.expand("%"))
	end,
})

