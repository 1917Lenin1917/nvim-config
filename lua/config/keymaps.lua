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
