-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jk to enter insert mode
vim.keymap.set("i", "jk", "<esc>")

-- Quick save
vim.keymap.set("n", ",w", "<cmd>w<cr>")
vim.keymap.set("i", ",w", "<esc><cmd>w<cr>")

-- Quick quit
vim.keymap.set("n", ",q", "<cmd>qa<cr>")
vim.keymap.set("i", ",q", "<esc><cmd>qa<cr>")

-- Source vim/nvim file
vim.keymap.set("n", ",s", "<cmd>so %<cr>", { desc = "Source vim/nvim file" })

-- Hover over definition
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Hover over definition" })

-- Make Y behave like D (copy to end)
vim.keymap.set("n", "Y", "y$")

-- Copy/paste to/from clipboard
vim.keymap.set("n", ",y", '"*y')
vim.keymap.set("n", ",p", '"*p')

-- Prev/next buffer
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Shift lines up and down
vim.keymap.set("n", ",j", ":m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("v", ",j", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("i", ",j", "<Esc>:m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("n", ",k", ":m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("v", ",k", ":m '<-2<cr>gv=gv", { desc = "Move up" })
vim.keymap.set("i", ",k", "<Esc>:m .-2<cr>==gi", { desc = "Move up" })

-- Start and end of line
vim.keymap.set("n", ",h", "^")
vim.keymap.set("n", ",l", "g_")

-- u to undo, so U to redo
vim.keymap.set("n", "U", "<c-r>")
