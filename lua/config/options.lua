-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_python_lsp = "pyright"

vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

vim.opt.conceallevel = 0

vim.opt.softtabstop = 4
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.o.tabstop = 4 -- changes visual column

vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  callback = function()
    -- avoid E523 when in command-line mode
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})
