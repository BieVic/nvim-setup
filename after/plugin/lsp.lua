local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
	'lua_ls',
	'pylsp',
	'rust_analyzer'
})

-- lsp.setup_servers({ 'rust_analyzer' })

-- require('lspconfig').rust_analyzer.setup({})

-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
