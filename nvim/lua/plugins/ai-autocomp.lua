return {
  {
    "Exafunction/codeium.vim",
    enabled = true,
    -- version = "1.8.37",
    config = function()
      vim.keymap.set("i", "<C-l>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
    end,
  },

  -- {
  --   "codota/tabnine-nvim",
  --   build = "./dl_binaries.sh",
  --   config = function()
  --     require("tabnine").setup({
  --       disable_auto_comment = true,
  --       accept_keymap = "<C-l>",
  --       dismiss_keymap = "<C-]>",
  --       debounce_ms = 300,
  --       suggestion_color = { gui = "#808080", cterm = 244 },
  --       exclude_filetypes = { "TelescopePrompt", "NvimTree" },
  --       log_file_path = nil, -- absolute path to Tabnine log file
  --       ignore_certificate_errors = false,
  --       plugins = {
  --         cmp = true,
  --       },
  --     })
  --
  --     -- vim.keymap.set("i", "C-l", function()
  --     --   if require("tabnine.keymaps").has_suggestion() then
  --     --     return require("tabnine.keymaps").accept_suggestion()
  --     --   elseif require("luasnip").jumpable(1) then
  --     --     return require("luasnip").jump(1)
  --     --   else
  --     --     return "C-l"
  --     --   end
  --     -- end, { expr = true })
  --   end,
  -- },

  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   build = ":Copilot auth",
  --   opts = {
  --     suggestion = { enabled = true },
  --     panel = { enabled = true },
  --     filetypes = {
  --       markdown = true,
  --       help = true,
  --     },
  --   },
  -- },
}
