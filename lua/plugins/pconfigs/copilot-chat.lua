return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "github/copilot.vim" },          -- provides authentication + copilot backend
    { "nvim-lua/plenary.nvim", branch="master" },       -- required by CopilotChat
  },
  opts = {
    -- Open chat in a split (vs float)
    window = {
      layout = "vertical",  -- "vertical" (right split) or "horizontal" (bottom split)
      width = 0.35,         -- 35% of editor width (only for vertical)
      height = 0.4,         -- 40% of editor height (only for horizontal)
    },
  },
  config = function(_, opts)
    require("CopilotChat").setup(opts)
    -- Keybinds
    vim.keymap.set("n", "<leader>cc", function()
      require("CopilotChat").toggle()
    end, { desc = "CopilotChat: toggle (split)" })
    vim.keymap.set("n", "<leader>cr", function()
      require("CopilotChat").reset()
    end, { desc = "CopilotChat: reset" })

    -- Send selection (visual) or current buffer context
    vim.keymap.set("v", "<leader>cs", function()
      require("CopilotChat").ask("", { selection = require("CopilotChat.select").visual })
    end, { desc = "CopilotChat: send selection" })

    vim.keymap.set("n", "<leader>ce", function()
      require("CopilotChat").ask("Explain this file.", { selection = require("CopilotChat.select").buffer })
    end, { desc = "CopilotChat: explain buffer" })
  end,
}
