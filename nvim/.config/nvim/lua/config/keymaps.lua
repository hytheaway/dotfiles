-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>D", Snacks.dashboard.open, { desc = "Go to Dashboard" })
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = " Toggle Outline" })
