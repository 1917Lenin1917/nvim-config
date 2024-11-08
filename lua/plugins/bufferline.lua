return {
	'akinsho/bufferline.nvim',
	version = "*",
	enabled = false,
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				style_preset = bufferline.style_preset.default,
				color_icons = true
			}
		})
	end
}
