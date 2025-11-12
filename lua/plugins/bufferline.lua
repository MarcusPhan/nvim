return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	keys = {
		{ "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		{ "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		{ "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete buffer" },
		{ "<leader>br", "<cmd>BufferLineCloseRight<cr>", desc = "Delete buffers to the right" },
		{ "<leader>bl", "<cmd>BufferLineCloseLeft<cr>", desc = "Delete buffers to the left" },
		{ "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Delete other buffers" },
		{ "<leader>bp", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle pin" },
	},
	opts = {
		options = {
			mode = "buffer",
			separator_style = "thin",
			always_show_bufferline = true,
			show_buffer_close_icons = false,
			show_close_icon = false,
			diagnostics = "nvim_lsp",
			offset = {
				filetype = "neo-tree",
				text = "Nvim Tree",
				separator = true,
				text_align = "left",
			},
		},
	},
}
