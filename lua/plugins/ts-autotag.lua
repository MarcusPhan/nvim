return {
	"windwp/nvim-ts-autotag",
	ft = {
		"html",
		"xml",
		"javascript",
		"typescript",
		"javascriptreact",
		"typescriptreact",
		"tsx",
	},
	config = function()
		require("nvim-ts-autotag").setup({})
	end,
}
