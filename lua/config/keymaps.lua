-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- stylua: ignore
vim.keymap.set("n", "<leader>Gj", "<cmd>lua require('gomodifytags').GoAddTags('json', {transformation = 'snakecase', skip_unexported = false})<CR>", { desc = "Add JSON Tags" })
