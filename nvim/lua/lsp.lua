require("mason").setup()

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
	lsp.default_keymaps({
		buffer = bufnr,
		preserve_mappings = true
	})
end)

lsp.setup()

local lspconfig = require('lspconfig')

lspconfig.volar.setup({})

lspconfig.ts_ls.setup({
	filetypes = {
		"javascript",
		"typescript",
	},
})
