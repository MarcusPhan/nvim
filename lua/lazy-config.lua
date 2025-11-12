-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins.gitsigns" },
		{ import = "plugins.which-key" },
		{ import = "plugins.lazygit" },
		{ import = "plugins.telescope" },
		{ import = "plugins.lazydev" },
		{ import = "plugins.lsp" },
		{ import = "plugins.autoformat" },
		{ import = "plugins.autocompletion" },
		{ import = "plugins.colorscheme" },
		{ import = "plugins.comment-highlight" },
		{ import = "plugins.mini" },
		{ import = "plugins.statusline" },
		{ import = "plugins.treesitter" },
		{ import = "plugins.autopairs" },
		{ import = "plugins.neotree" },
		{ import = "plugins.indent-blankline" },
		{ import = "plugins.lint" },
		{ import = "plugins.debug" },
		{ import = "plugins.toggleterm" },
		{ import = "lsp-servers.typescript-tools" },
		{ import = "plugins.ts-autotag" },
		{ import = "plugins.nvim-colorizer" },
		{ import = "plugins.bufferline" },
		{ import = "plugins.vim-tmux-navigator" },
	},
	--  install = { colorscheme = { "tokyonight", "habamax" } },
	--  checker = { enabled = true },
})
