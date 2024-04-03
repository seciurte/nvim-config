-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

require("lspconfig").rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true,
      },
    },
  },
})
