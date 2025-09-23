return {
  "zbirenbaum/copilot.lua",
  enabled = require("toggles").enabled "copilot",
  lazy = false,
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
        next = "<C-j>",
      },
    },
  },
}
