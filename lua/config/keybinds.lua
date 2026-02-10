vim.g.mapleader = " "

-- Normal mode keybinds
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>o", "mzo<esc>`z")
vim.keymap.set("n", "<leader>O", "mzO<esc>`z")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")

-- Insert mode keybinds
vim.keymap.set("i", "jj", "<Esc>")

-- Visual mode keybinds
vim.keymap.set("v", '"', 'c""<esc>P')
vim.keymap.set("v", "<leader>y", '"+y')
