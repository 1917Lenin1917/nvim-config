return {
	{
		"FabijanZulj/blame.nvim",
		lazy = false,
		config = function()
			require("blame").setup({})

			vim.keymap.set('n', '<leader>gb', '<CMD>BlameToggle<CR>', { desc = 'GitBlame: Toggle' })
		end,
	},
}
