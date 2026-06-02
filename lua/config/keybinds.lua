vim.g.mapleader = " "

-- Normal mode keybinds
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>cd", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>o", "mzo<esc>`z")
vim.keymap.set("n", "<leader>O", "mzO<esc>`z")
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 5)
end)
vim.keymap.set("n", "<C-d>", "<cmd>:q<CR>")

-- Insert mode keybinds
vim.keymap.set("i", "jj", "<Esc>")

-- Visual mode keybinds
vim.keymap.set("v", '"', 'c""<esc>P')
vim.keymap.set("v", "<leader>y", '"+y')
