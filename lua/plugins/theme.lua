return {
  {
    "xiantang/darcula-dark.nvim",
    config = function()
      require("darcula").setup({
        override = function(c)
          return {
            --            dark = "#1C1D1F",
          }
        end,
      })
    end,
  },
  { "EdenEast/nightfox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darcula-dark",
    },
  },
}
