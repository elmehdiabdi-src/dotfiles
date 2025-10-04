vim.api.nvim_set_keymap("n", "<C-a>", ":Lspsaga code_action<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-e>", ":NERDTreeToggle<CR>", { noremap = true })

vim.api.nvim_create_augroup('AutoFormatting', {})

vim.api.nvim_create_autocmd('BufWritePost', {
	group = 'AutoFormatting',
	callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})


local cmp = require('cmp')

cmp.setup({
	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	},
})
