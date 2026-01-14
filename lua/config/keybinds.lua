vim.g.mapleader = " "

-- Normal mode keybinds
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>y", '"+y')

-- Insert mode keybinds
vim.keymap.set("i", "jj", "<Esc>")

-- Visual mode keybinds
vim.keymap.set('v', '"', 'c""<esc>P')
