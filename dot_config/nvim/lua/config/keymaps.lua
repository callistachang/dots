-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jk to enter insert mode
vim.keymap.set("i", "jk", "<esc>")

-- Quick save
vim.keymap.set("n", ",w", "<cmd>w<cr>")
vim.keymap.set("i", ",w", "<esc><cmd>w<cr>")

-- Quick quit
vim.keymap.set("n", ",q", "<cmd>q<cr>")
vim.keymap.set("i", ",q", "<esc><cmd>q<cr>")
vim.keymap.set("n", ",x", "<cmd>qa<cr>")
vim.keymap.set("i", ",x", "<esc><cmd>qa<cr>")

-- Quick format
vim.keymap.set("n", ",f", vim.lsp.buf.format)

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
vim.keymap.set("n", "<s-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<s-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Shift lines up and down
vim.keymap.set("n", "<up>", ":m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("v", "<up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
vim.keymap.set("n", "<down>", ":m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("v", "<down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })

-- Start and end of line
vim.keymap.set("n", "<left>", "^")
vim.keymap.set("n", "<right>", "g_")

-- u to undo, so U to redo
vim.keymap.set("n", "U", "<c-r>")

-- Code runner
vim.keymap.set("n", ",r", "<cmd>RunCode<cr>", { noremap = true, silent = false })

-- Floating terminal
vim.keymap.set("t", "<esc>", [[<c-\><c-n>]])
vim.keymap.set("t", "<c-h>", [[<c-\><c-n><C-w>h]], { desc = "Go to left window" })
vim.keymap.set("t", "<c-j>", [[<c-\><c-n><C-w>j]], { desc = "Go to lower window" })
vim.keymap.set("t", "<c-k>", [[<c-\><c-n><C-w>k]], { desc = "Go to upper window" })
vim.keymap.set("t", "<c-l>", [[<c-\><c-n><C-w>l]], { desc = "Go to right window" })
vim.keymap.set({ "t", "n" }, "<c-t>", [[<c-\><c-n><cmd>ToggleTerm<cr>]])

-- Vimspector
-- vim.keymap.set("n", ",d", "<Plug>VimspectorContinue")
