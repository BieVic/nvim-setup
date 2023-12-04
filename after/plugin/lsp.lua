local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	'lua_ls',
	'pylsp',
	'rust_analyzer',
	'zls',
	'clangd'
})

lsp.setup()
