return {
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "basic",
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
			},
		},
	},
	on_attach = function(client, bufnr)
		-- Let Ruff handle formatting
		client.server_capabilities.documentFormattingProvider = false
	end,
}
