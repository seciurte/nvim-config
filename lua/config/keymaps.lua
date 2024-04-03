-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")
-- vim.keymap.del("i", "<C-d>")

-- Move left or right word by word in normal mode
vim.api.nvim_set_keymap("n", "<C-Left>", ":lua move_word_left()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":lua move_word_right()<CR>", { noremap = true, silent = true })

-- Move left or right word by word in insert mode
vim.api.nvim_set_keymap("i", "<C-Left>", "<Esc>:lua move_word_left()<CR>a", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-Right>", "<Esc>:lua move_word_right()<CR>a", { noremap = true, silent = true })

-- Lua function to move cursor to the previous word
function move_word_left()
  vim.cmd([[normal! b]])
end

-- Lua function to move cursor to the next word
function move_word_right()
  vim.cmd([[normal! w]])
end
