-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jk to enter insert mode
vim.keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "JK", "<esc>", { desc = "Exit insert mode" })

-- Quick save
vim.keymap.set("n", ",w", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("i", ",w", "<esc><cmd>w<cr>", { desc = "Save file" })

-- Quick quit
vim.keymap.set("n", ",q", "<cmd>q<cr>", { desc = "Quit current window" })
vim.keymap.set("i", ",q", "<esc><cmd>q<cr>", { desc = "Quit current window" })
vim.keymap.set("n", ",x", "<cmd>qa<cr>", { desc = "Quit all windows" })
vim.keymap.set("i", ",x", "<esc><cmd>qa<cr>", { desc = "Quit all windows" })

-- Quick format
vim.keymap.set("n", ",f", vim.lsp.buf.format, { desc = "Format current file" })

-- Hover over definition
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Hover over definition" })

-- Make Y behave like D (copy to end)
vim.keymap.set("n", "Y", "y$", { desc = "Copy to end of line" })

-- Copy/paste to/from clipboard
vim.keymap.set("n", ",y", '"*y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", ",p", '"*p', { desc = "Paste from system clipboard" })

-- Prev/next buffer
vim.keymap.set("n", "<s-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<s-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize windows
vim.keymap.set({ "n", "t" }, "<M-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set({ "n", "t" }, "<M-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set({ "n", "t" }, "<M-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set({ "n", "t" }, "<M-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move lines up and down
vim.keymap.set("n", "J", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "K", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Start and end of line (I can't think of a good keymap for this so nvm)
-- vim.keymap.set("n", "<left>", "^", { desc = "Navigate to start of line" })
-- vim.keymap.set("i", "<right>", "g_", { desc = "Navigate to end of line" })

-- u to undo, so U to redo
vim.keymap.set("n", "U", "<c-r>", { desc = "Redo" })

-- Code runner
vim.keymap.set("n", ",r", "<cmd>RunCode<cr>", { desc = "Run current file using Code Runner" })

-- Floating terminal
vim.keymap.set("t", "<esc>", [[<c-\><c-n>]], { desc = "Enter normal mode in terminal" })
vim.keymap.set("t", "<c-h>", [[<c-\><c-n><C-w>h]], { desc = "Go to left window" })
vim.keymap.set("t", "<c-j>", [[<c-\><c-n><C-w>j]], { desc = "Go to lower window" })
vim.keymap.set("t", "<c-k>", [[<c-\><c-n><C-w>k]], { desc = "Go to upper window" })
vim.keymap.set("t", "<c-l>", [[<c-\><c-n><C-w>l]], { desc = "Go to right window" })
vim.keymap.set({ "t", "n" }, "<c-t>", [[<c-\><c-n><cmd>ToggleTerm<cr>]], { desc = "Toggle terminal" })

-- Alpha
vim.keymap.set("n", "<leader>a", "<cmd>:Alpha<cr>", { desc = "Alpha" })

-- Bidirectional leap
vim.keymap.set("n", "s", function() require('leap').leap { target_windows = { vim.fn.win_getid() } } end,
  { desc = "Bidirectional leap" })
