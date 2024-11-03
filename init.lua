require("config.keymaps")
require("config.sets")
require("config.autocmd")
require("config.lazy")

-- vim.cmd.colorscheme "catppuccin"
vim.cmd.colorscheme "gruvbuddy"
-- vim.cmd.colorscheme "nvcode"
-- vim.cmd.colorscheme "codedark"

-- setup colors for cmp


-- require("ibl").setup()
require("nvim-ts-autotag").setup()

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

