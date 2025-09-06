return {
  {
    "xiantang/darcula-dark.nvim",
    -- config = function()
    --   -- setup must be called before loading
    --   require("darcula").setup({
    --     override = function(c)
    --       return {
    --         dark = "#1C1D1F",
    --       }
    --     end,
    --     --   opt = {
    --     --     integrations = {
    --     --       lualine = true,
    --     --       lsp_semantics_token = true,
    --     --       nvim_cmp = true,
    --     --       dap_nvim = true,
    --     --     },
    --     --   },
    --   })
    -- end,
  },
  { "Mofiqul/vscode.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "navarasu/onedark.nvim" },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark",
    },
  },
}
