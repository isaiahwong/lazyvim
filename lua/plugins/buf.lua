require("lspconfig").bufls.setup({
  cmd = { "bufls", "serve" },
  filetypes = { "proto" },
  root_dir = require("lspconfig").util.root_pattern("buf.work.yaml", "buf.yaml", ".git"),
  on_attach = function(client, bufnr)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
  end,
})

return {}
