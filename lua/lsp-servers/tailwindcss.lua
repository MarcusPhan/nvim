return {

	-- cmd = {
	-- 	vim.fn.stdpath("data")
	-- 		.. "/mason/packages/tailwindcss-language-server/node_modules/.bin/tailwindcss-language-server",
	--
	-- 	"--stdio",
	-- },
	filetypes = {
		"html",
		"css",
		"scss",
		"sass",
		"postcss",

		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
		"svelte",
		"astro",
		"php",
	},

	-- (optional) Tailwind LSP settings
	settings = {
		tailwindCSS = {
			-- if you use clsx/cva/tw macros, teach the LSP to extract classes:
			experimental = {
				classRegex = {
					{ "clsx\\(([^)]*)\\)", "[\"'`]([^\"'`]*)[\"'`]" },
					{ "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*)[\"'`]" },
					"tw`([^`]*)`",
					"tw\\(([^)]*)\\)",
				},
			},
			includeLanguages = { typescript = "javascript", typescriptreact = "javascript" },
		},
	},
}
