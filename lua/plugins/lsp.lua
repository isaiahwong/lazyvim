return {
  "neovim/nvim-lspconfig", -- The name of the plugin you want to configure
  opts = {
    -- Your custom options go here
    inlay_hints = { enabled = false },
    servers = {
      clangd = {
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "hpp" },
      },
    },
    -- You can add other lspconfig options as needed
    -- For example:
    -- servers = {
    --   pyright = {} -- Ensure pyright is set up (LazyVim usually does this if the extra is enabled)
    -- }
  },
  -- You can also include other plugin spec options like `event`, `dependencies`, `config`, etc.
  -- For example, to run something when the plugin is configured:
  -- config = function(_, opts)
  --   -- Default LazyVim config for lspconfig is usually called internally.
  --   -- You can add custom setup after default setup if needed, but be cautious.
  --   print("Custom nvim-lspconfig options applied")
  -- end
}
