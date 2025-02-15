return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  -- stylua: ignore
  keys = {
    { "<leader>du", function() require("dapui").toggle({ }) end, desc = "Dap UI" },
    { "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = {"n", "v"} },
  },
  opts = {
    layouts = {
      {
        elements = {
          -- { id = "console", size = 0.5 },
          { id = "stacks", size = 0.15 },
          { id = "breakpoints", size = 0.5 },
        },
        position = "left",
        size = 50,
      },
      {
        elements = {
          { id = "scopes", size = 0.50 },
          { id = "repl", size = 0.5 },
          -- { id = "stacks", size = 0.15 },
          -- { id = "watches", size = 0.15 },
        },
        position = "bottom",
        size = 15,
      },
    },
  },
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
    -- dap.listeners.before.event_terminated["dapui_config"] = function()
    --   dapui.close({})
    -- end
    -- dap.listeners.before.event_exited["dapui_config"] = function()
    --   dapui.close({})
    -- end
  end,
}
