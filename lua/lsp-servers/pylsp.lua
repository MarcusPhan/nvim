return {
	settings = {
		pylsp = {
			plugins = {
				ruff = {
					enabled = true,
					formatEnabled = true, -- Enable Ruff for formatting
					-- extendSelect = { 'I' }, -- Optional: Extend selected rules
					-- format = { 'I' }, -- Optional: Rules to apply formatting to
					-- unsafeFixes = true, -- Optional: Enable unsafe fixes
				},

				-- Disable all linters
				pycodestyle = { enabled = false },
				mccabe = { enabled = false },
				pyflakes = { enabled = false },
				flake8 = { enabled = false },
				pylint = { enabled = false },

				-- Disable formatters
				autopep8 = { enabled = false },
				yapf = { enabled = false },
				black = { enabled = false },
			},
		},
	},
}
