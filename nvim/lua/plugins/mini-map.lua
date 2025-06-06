return {
  -- {
  --   "gorbit99/codewindow.nvim",
  --   config = function()
  --     local codewindow = require("codewindow")
  --     codewindow.setup({
  --       active_in_terminals = false, -- Should the minimap activate for terminal buffers
  --       auto_enable = true, -- Automatically open the minimap when entering a (non-excluded) buffer (accepts a table of filetypes)
  --       exclude_filetypes = { "help" }, -- Choose certain filetypes to not show minimap on
  --       max_minimap_height = 15, -- The maximum height the minimap can take (including borders)
  --       max_lines = 80, -- If auto_enable is true, don't open the minimap for buffers which have more than this many lines.
  --       minimap_width = 8, -- The width of the text part of the minimap
  --       use_lsp = true, -- Use the builtin LSP to show errors and warnings
  --       use_treesitter = true, -- Use nvim-treesitter to highlight the code
  --       use_git = true, -- Show small dots to indicate git additions and deletions
  --       width_multiplier = 5, -- How many characters one dot represents
  --       z_index = 1, -- The z-index the floating window will be on
  --       show_cursor = true, -- Show the cursor position in the minimap
  --       screen_bounds = "lines", -- How the visible area is displayed, "lines": lines above and below, "background": background color
  --       window_border = "single", -- The border style of the floating window (accepts all usual options)
  --       relative = "editor", -- What will be the minimap be placed relative to, "win": the current window, "editor": the entire editor
  --       events = {
  --         "TextChanged",
  --         "InsertLeave",
  --         "DiagnosticChanged",
  --         "FileWritePost",
  --       }, -- Events that update the code window
  --     })
  --     codewindow.apply_default_keybinds()
  --   end,
  -- },

  ------@module "neominimap.config.meta"
  ---{
  ---  "Isrothy/neominimap.nvim",
  ---  enabled = true,
  ---  lazy = false, -- WARN: NO NEED to Lazy load
  ---  init = function()
  ---    vim.opt.wrap = true -- Recommended
  ---    vim.opt.sidescrolloff = 36 -- It's recommended to set a large value
  ---    ---@type Neominimap.UserConfig
  ---    vim.g.neominimap = {
  ---      auto_enable = true,
  ---      -- Log level
  ---      log_level = vim.log.levels.ON,
  ---
  ---      -- Notification level
  ---      notification_level = vim.log.levels.INFO,
  ---
  ---      -- Path to the log file
  ---      log_path = vim.fn.stdpath("data") .. "/neominimap.log",
  ---
  ---      -- Minimap will not be created for buffers of these types
  ---      exclude_filetypes = { "help" },
  ---
  ---      -- Minimap will not be created for buffers of these types
  ---      exclude_buftypes = {
  ---        "nofile",
  ---        "nowrite",
  ---        "quickfix",
  ---        "terminal",
  ---        "prompt",
  ---      },
  ---
  ---      -- When false is returned, the minimap will not be created for this buffer
  ---      buf_filter = function(bufnr)
  ---        return true
  ---      end,
  ---
  ---      -- When false is returned, the minimap will not be created for this window
  ---      win_filter = function(winid)
  ---        return true
  ---      end,
  ---
  ---      -- Maximum height for the minimap
  ---      -- If set to nil, there is no maximum height restriction
  ---      max_minimap_height = 10,
  ---
  ---      -- Width of the minimap window
  ---      minimap_width = 10,
  ---
  ---      -- How many columns a dot should span
  ---      x_multiplier = 5,
  ---
  ---      -- How many rows a dot should span
  ---      y_multiplier = 1,
  ---
  ---      -- For performance issue, when text changed,
  ---      -- minimap is refreshed after a certain delay
  ---      -- Set the delay in milliseconds
  ---      delay = 100,
  ---
  ---      -- Z-index for the floating window
  ---      z_index = 1,
  ---
  ---      -- Diagnostic integration
  ---      diagnostic = {
  ---        enabled = true,
  ---        severity = vim.diagnostic.severity.WARN,
  ---        priority = {
  ---          ERROR = 100,
  ---          WARN = 90,
  ---          INFO = 80,
  ---          HINT = 70,
  ---        },
  ---      },
  ---
  ---      treesitter = {
  ---        enabled = true,
  ---        priority = 200,
  ---      },
  ---      margin = {
  ---        right = 0,
  ---        top = 1,
  ---        bottom = 0,
  ---      },
  ---
  ---      -- Border style of the floating window
  ---      -- Accepts all usual border style options (e.g., "single", "double")
  ---      window_border = "single",
  ---    }
  ---  end,
  ---},
}
