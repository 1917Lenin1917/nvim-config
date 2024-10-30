vim.api.nvim_create_autocmd("FileType", {
	desc = "Open help menu vertically",
	pattern = "help",
	group = vim.api.nvim_create_augroup("v_help", {}),
	callback = function (opts)
		vim.cmd.wincmd("L")
		vim.cmd("vert resize 90")
	end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
