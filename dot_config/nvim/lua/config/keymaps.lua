-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<esc>")

vim.keymap.set("n", ",w", ":w!<cr>")
vim.keymap.set("i", ",w", "<esc>:w!<cr>")

vim.keymap.set("n", ",q", ":q<cr>")
vim.keymap.set("i", ",q", "<esc>l:q<cr>")

vim.keymap.set("n", ",s", ":so %<cr>")

vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Hover over definition" })

-- vim.keymap.set("n", ",f", vim.lsp.buf.format, { desc = "Format document" })

vim.keymap.set("n", ",f", "gg=G", { desc = "Format document" })
