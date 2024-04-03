-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

-- Map Ctrl + Left to switch to the window on the left
vim.api.nvim_set_keymap("n", "<C-Left>", "<C-W>h", { noremap = true, silent = true })

-- Map Ctrl + Right to switch to the window on the right
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-W>l", { noremap = true, silent = true })

-- Map Ctrl + Up to switch to the window above
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-W>k", { noremap = true, silent = true })

-- Map Ctrl + Down to switch to the window below
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-W>j", { noremap = true, silent = true })
