require("config.keymaps")
require("config.sets")
require("config.autocmd")

require("config.lazy")

-- vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "nvcode"
vim.cmd.colorscheme "codedark"

require("ibl").setup()
require("nvim-ts-autotag").setup()

-- require("nvim-treesitter.highlight")
--
-- local hlmap = vim.treesitter.TSHighlighter.hl_map
-- hlmap["custom.jsx.element"] = "Type"
-- require "nvim-treesitter.configs".setup { 
-- }
