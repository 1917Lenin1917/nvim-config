vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Open Explorer
vim.keymap.set("n", "<leader>pf", "<cmd>Ex<cr>", {})

-- Resize window with alt-shift + arrows
vim.keymap.set("n", "<C-Left>", "<C-W>>", {})
vim.keymap.set("n", "<C-Right>", "<C-W><", {})
vim.keymap.set("n", "<C-Up>", "<C-W>+", {})
vim.keymap.set("n", "<C-Down>", "<C-W>-", {})

-- Bind comment to <C-_>
vim.keymap.set("v", "<C-_>", "gc", { remap = true })

vim.keymap.set("n", "<leader>H", "<CMD>lua vim.diagnostic.open_float(0, {scope='line'})<CR>", {desc="Displays diagnostic in floating window."})
vim.keymap.set("n", "<leader>h", "<CMD>lua vim.lsp.buf.hover()<CR>", {desc="Displays hover information about the symbol under the cursor."})

-- barbar
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

	
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferLineCycleNext<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferLineCyclePrev<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferLineMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferLineMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferLineGoToBuffer 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferLineGoToBuffer 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferLineGoToBuffer 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferLineGoToBuffer 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferLineGoToBuffer 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferLineGoToBuffer 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferLineGoToBuffer 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferLineGoToBuffer 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferLineGoToBuffer 9<CR>', opts)
-- map('n', '<A-0>', '<Cmd>BufferLineLast<CR>', opts)
-- Pin/unpin buffer
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned
-- Close buffer
-- map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
-- map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
