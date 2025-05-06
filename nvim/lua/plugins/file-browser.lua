return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    opts = function()
      local fb_actions = require("telescope._extensions.file_browser.actions")
      return {
        extensions = {
          file_browser = {
            -- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#themes
            ---@alias telescope_themes
            ---| "cursor"   # see `telescope.themes.get_cursor()`
            ---| "dropdown" # see `telescope.themes.get_dropdown()`
            ---| "ivy"      # see `telescope.themes.get_ivy()`
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            wrap_results = false,

            -- 'horizontal'|'vertical'|'center'|'cursor'|'flex'|'bottom_pane'
            layout_strategy = "horizontal",
            layout_config = {
              prompt_position = "bottom",
              -- height = 36,
              -- width = 80,
              preview_cutoff = 99,
            },
            sorting_strategy = "descending",
            winblend = 0,
            mappings = {
              ["n"] = {
                ["h"] = fb_actions.goto_parent_dir,
                ["l"] = fb_actions.change_cwd,
              },
            },
            path = "%:p:h",
            respect_gitignore = false,
            hidden = false,
            grouped = true,
            previewer = true,
            initial_mode = "normal",
          },
        },
      }
    end,
    config = function(_, opts)
      require("telescope").setup(opts)
      require("telescope").load_extension("file_browser")
    end,
  },
}
