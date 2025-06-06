return {
  {
    "aliqyan-21/darkvoid.nvim",
    config = function()
      return {
        transparent = true,
        glow = true,
      }
    end,
  },

  {
    "zootedb0t/citruszest.nvim",
    lazy = false,
    priority = 1000,
  },

  -- {
  --   "maxmx03/fluoromachine.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     local fm = require("fluoromachine")
  --
  --     fm.setup({
  --       glow = true,
  --       theme = "fluoromachine",
  --       transparent = true,
  --       -- colors = function(_, color)
  --       -- local darken = color.darken
  --       -- local lighten = color.lighten
  --       -- local blend = color.blend
  --       -- local shade = color.shade
  --       -- local tint = color.tint
  --       -- return {
  --       -- bg = "#190920",
  --       -- bgdark = darken("#190920", 20),
  --       -- cyan = "#49eaff",
  --       -- red = "#ff1e34",
  --       -- yellow = "#ffe756",
  --       -- orange = "#f38e21",
  --       -- pink = "#ffadff",
  --       -- purple = "#9544f7",
  --       --   }
  --       -- end,
  --     })
  --
  --     vim.cmd.colorscheme("fluoromachine")
  --   end,
  -- },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      }
    end,
  },

  {
    "tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.hint = "#404040"
        colors.error = "#ff0000"
        colors.red = "#6b6e6b"
        colors.red1 = "#595c59"
        colors.green = "#cfd1cf"
        colors.green1 = "#dbe1db"
        colors.green2 = "#e7f1e7"
        colors.blue = "#8a9a8a"
        colors.blue0 = "#6f7a6f"
        colors.blue1 = "#b7c2b7"
        colors.blue2 = "#c9d1c9"
        colors.blue5 = "#dae1da"
        colors.blue6 = "#eaf1ea"
        colors.blue7 = "#8b9a8b"
        colors.border = "#98a098"
        colors.border_highlight = "#404040"
        colors.comment = "#4b5a4b"
        colors.cyan = "#7e8f7e"
        -- colors.bg_highlight = "#b9c0b9"
        colors.fg_gutter = "#657065"
        colors.text = "#3e4a3e"
        colors.white = "#a9b2a9"
        colors.magenta = "#dce6dc"
        colors.magenta2 = "#dce6e4"

        --[[
          fg = "#c0c0c0",
          bg = "#1c1c1c",
          cursor = "#bdfe58",
          line_nr = "#404040",
          visual = "#303030",
          comment = "#585858",
          string = "#d1d1d1",
          func = "#e1e1e1",
          kw = "#f1f1f1",
          identifier = "#b1b1b1",
          type = "#a1a1a1",
          search_highlight = "#1bfd9c",
          operator = "#1bfd9c",
          bracket = "#e6e6e6",
          preprocessor = "#4b8902",
          bool = "#66b2b2",
          constant = "#b2d8d8",
        --]]

        -- colors.hint = "#c2410c"
        -- colors.error = "#ff0000"
        -- colors.red = "#ea6962"
        -- colors.red1 = "#a14242"
        -- colors.green = "#fbf1c7" -- #90897F" -- "#6D6559" String
        -- colors.green1 = "#89b482"
        -- colors.green2 = "#89b400"
        -- colors.blue = "#7daea3"
        -- colors.blue0 = "#79ad9f"
        -- colors.blue1 = "#F5BC36"
        -- colors.blue2 = "#70a4ff"
        -- colors.blue5 = "#31b1e0"
        -- colors.blue6 = "#B26183"
        -- colors.blue7 = "#70f2f2"
        -- colors.border = "#db2777" -- " "#15161e"
        -- colors.border_highlight = "#27a1b9"
        -- colors.comment = "#505050"
        -- colors.cyan = "#81A497"
        -- colors.bg_highlight = "#292929"
        -- colors.fg_gutter = "#2e3715"
        -- colors.text = "#0f0ff"
        -- colors.white = "#0f0ff"
        -- colors.magenta = "#a9b665" -- Function, Class
      end,
      -- on_highlights = function(hl, c)
      -- hl.Normal = { bg = "#050508" }
      -- hl.ReferencesIcon = { bg = "#f89d89" }
      -- end,
    },
  },

  --[[
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        color_overrides = {
          mocha = {
            rosewater = "#a14242",
            flamingo = "#a14242",
            red = "#ea6962",
            maroon = "#A37A7A",
            pink = "#d3869b",
            mauve = "#d3869b",
            peach = "#e78a4e",
            yellow = "#d8a657",
            green = "#a9b665",
            teal = "#89b482",
            sky = "#89b482",
            sapphire = "#89b482",
            blue = "#7daea3",
            lavender = "#7daea3",
            text = "#ebdbb2",
            subtext1 = "#d5c4a1",
            subtext0 = "#bdae93",
            overlay2 = "#a89984",
            overlay1 = "#928374",
            overlay0 = "#595959",
            surface2 = "#4d4d4d",
            surface1 = "#404040",
            surface0 = "#292929",
            base = "#1d2021",
            mantle = "#191b1c",
            crust = "#141617",
          },
          latte = {
            rosewater = "#c14a4a",
            flamingo = "#c14a4a",
            red = "#c14a4a",
            maroon = "#c14a4a",
            pink = "#945e80",
            mauve = "#945e80",
            peach = "#c35e0a",
            yellow = "#b47109",
            green = "#6c782e",
            teal = "#4c7a5d",
            sky = "#4c7a5d",
            sapphire = "#4c7a5d",
            blue = "#45707a",
            lavender = "#45707a",
            text = "#654735",
            subtext1 = "#73503c",
            subtext0 = "#805942",
            overlay2 = "#8c6249",
            overlay1 = "#8c856d",
            overlay0 = "#a69d81",
            surface2 = "#bfb695",
            surface1 = "#d1c7a3",
            surface0 = "#e3dec3",
            base = "#f9f5d7",
            mantle = "#f0ebce",
            crust = "#e8e3c8",
          },
        },
        show_end_of_buffer = false,
        integration_default = false,
        integrations = {
          barbecue = { dim_dirname = true, bold_basename = true, dim_context = false, alt_background = false },
          cmp = true,
          gitsigns = true,
          hop = true,
          illuminate = { enabled = true },
          native_lsp = { enabled = true, inlay_hints = { background = true } },
          neogit = true,
          neotree = true,
          semantic_tokens = true,
          treesitter = true,
          treesitter_context = true,
          vimwiki = true,
          which_key = true,
        },
        highlight_overrides = {
          all = function(colors)
            return {
              CmpItemMenu = { fg = colors.surface2 },
              CursorLineNr = { fg = colors.text },
              FloatBorder = { bg = colors.base, fg = colors.surface0 },
              GitSignsChange = { fg = colors.peach },
              LineNr = { fg = colors.overlay0 },
              LspInfoBorder = { link = "FloatBorder" },
              NeoTreeDirectoryIcon = { fg = colors.subtext1 },
              NeoTreeDirectoryName = { fg = colors.subtext1 },
              NeoTreeFloatBorder = { link = "TelescopeResultsBorder" },
              NeoTreeGitConflict = { fg = colors.red },
              NeoTreeGitDeleted = { fg = colors.red },
              NeoTreeGitIgnored = { fg = colors.overlay0 },
              NeoTreeGitModified = { fg = colors.peach },
              NeoTreeGitStaged = { fg = colors.green },
              NeoTreeGitUnstaged = { fg = colors.red },
              NeoTreeGitUntracked = { fg = colors.green },
              NeoTreeIndent = { fg = colors.surface1 },
              NeoTreeNormal = { bg = colors.mantle },
              NeoTreeNormalNC = { bg = colors.mantle },
              NeoTreeRootName = { fg = colors.subtext1, style = { "bold" } },
              NeoTreeTabActive = { fg = colors.text, bg = colors.mantle },
              NeoTreeTabInactive = { fg = colors.surface2, bg = colors.crust },
              NeoTreeTabSeparatorActive = { fg = colors.mantle, bg = colors.mantle },
              NeoTreeTabSeparatorInactive = { fg = colors.crust, bg = colors.crust },
              NeoTreeWinSeparator = { fg = colors.base, bg = colors.base },
              NormalFloat = { bg = colors.base },
              Pmenu = { bg = colors.mantle, fg = "" },
              PmenuSel = { bg = colors.surface0, fg = "" },
              TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
              TelescopePreviewNormal = { bg = colors.crust },
              TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
              TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
              TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
              TelescopePromptNormal = { bg = colors.surface0 },
              TelescopePromptPrefix = { bg = colors.surface0 },
              TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
              TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
              TelescopeResultsNormal = { bg = colors.mantle },
              TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
              TelescopeSelection = { bg = colors.surface0 },
              VertSplit = { bg = colors.base, fg = colors.surface0 },
              WhichKeyFloat = { bg = colors.mantle },
              YankHighlight = { bg = colors.surface2 },
              FidgetTask = { fg = colors.subtext2 },
              FidgetTitle = { fg = colors.peach },

              IblIndent = { fg = colors.surface0 },
              IblScope = { fg = colors.overlay0 },

              Boolean = { fg = colors.mauve },
              Number = { fg = colors.mauve },
              Float = { fg = colors.mauve },

              PreProc = { fg = colors.mauve },
              PreCondit = { fg = colors.mauve },
              Include = { fg = colors.mauve },
              Define = { fg = colors.mauve },
              Conditional = { fg = colors.red },
              Repeat = { fg = colors.red },
              Keyword = { fg = colors.red },
              Typedef = { fg = colors.red },
              Exception = { fg = colors.red },
              Statement = { fg = colors.red },

              Error = { fg = colors.red },
              StorageClass = { fg = colors.peach },
              Tag = { fg = colors.peach },
              Label = { fg = colors.peach },
              Structure = { fg = colors.peach },
              Operator = { fg = colors.peach },
              Title = { fg = colors.peach },
              Special = { fg = colors.yellow },
              SpecialChar = { fg = colors.yellow },
              Type = { fg = colors.yellow, style = { "bold" } },
              Function = { fg = colors.green, style = { "bold" } },
              Delimiter = { fg = colors.subtext2 },
              Ignore = { fg = colors.subtext2 },
              Macro = { fg = colors.teal },

              TSAnnotation = { fg = colors.mauve },
              TSAttribute = { fg = colors.mauve },
              TSBoolean = { fg = colors.mauve },
              TSCharacter = { fg = colors.teal },
              TSCharacterSpecial = { link = "SpecialChar" },
              TSComment = { link = "Comment" },
              TSConditional = { fg = colors.red },
              TSConstBuiltin = { fg = colors.mauve },
              TSConstMacro = { fg = colors.mauve },
              TSConstant = { fg = colors.text },
              TSConstructor = { fg = colors.green },
              TSDebug = { link = "Debug" },
              TSDefine = { link = "Define" },
              TSEnvironment = { link = "Macro" },
              TSEnvironmentName = { link = "Type" },
              TSError = { link = "Error" },
              TSException = { fg = colors.red },
              TSField = { fg = colors.blue },
              TSFloat = { fg = colors.mauve },
              TSFuncBuiltin = { fg = colors.green },
              TSFuncMacro = { fg = colors.green },
              TSFunction = { fg = colors.green },
              TSFunctionCall = { fg = colors.green },
              TSInclude = { fg = colors.red },
              TSKeyword = { fg = colors.red },
              TSKeywordFunction = { fg = colors.red },
              TSKeywordOperator = { fg = colors.peach },
              TSKeywordReturn = { fg = colors.red },
              TSLabel = { fg = colors.peach },
              TSLiteral = { link = "String" },
              TSMath = { fg = colors.blue },
              TSMethod = { fg = colors.green },
              TSMethodCall = { fg = colors.green },
              TSNamespace = { fg = colors.yellow },
              TSNone = { fg = colors.text },
              TSNumber = { fg = colors.mauve },
              TSOperator = { fg = colors.peach },
              TSParameter = { fg = colors.text },
              TSParameterReference = { fg = colors.text },
              TSPreProc = { link = "PreProc" },
              TSProperty = { fg = colors.blue },
              TSPunctBracket = { fg = colors.text },
              TSPunctDelimiter = { link = "Delimiter" },
              TSPunctSpecial = { fg = colors.blue },
              TSRepeat = { fg = colors.red },
              TSStorageClass = { fg = colors.peach },
              TSStorageClassLifetime = { fg = colors.peach },
              TSStrike = { fg = colors.subtext2 },
              TSString = { fg = colors.teal },
              TSStringEscape = { fg = colors.green },
              TSStringRegex = { fg = colors.green },
              TSStringSpecial = { link = "SpecialChar" },
              TSSymbol = { fg = colors.text },
              TSTag = { fg = colors.peach },
              TSTagAttribute = { fg = colors.green },
              TSTagDelimiter = { fg = colors.green },
              TSText = { fg = colors.green },
              TSTextReference = { link = "Constant" },
              TSTitle = { link = "Title" },
              TSTodo = { link = "Todo" },
              TSType = { fg = colors.yellow, style = { "bold" } },
              TSTypeBuiltin = { fg = colors.yellow, style = { "bold" } },
              TSTypeDefinition = { fg = colors.yellow, style = { "bold" } },
              TSTypeQualifier = { fg = colors.peach, style = { "bold" } },
              TSURI = { fg = colors.blue },
              TSVariable = { fg = colors.text },
              TSVariableBuiltin = { fg = colors.mauve },

              ["@annotation"] = { link = "TSAnnotation" },
              ["@attribute"] = { link = "TSAttribute" },
              ["@boolean"] = { link = "TSBoolean" },
              ["@character"] = { link = "TSCharacter" },
              ["@character.special"] = { link = "TSCharacterSpecial" },
              ["@comment"] = { link = "TSComment" },
              ["@conceal"] = { link = "Grey" },
              ["@conditional"] = { link = "TSConditional" },
              ["@constant"] = { link = "TSConstant" },
              ["@constant.builtin"] = { link = "TSConstBuiltin" },
              ["@constant.macro"] = { link = "TSConstMacro" },
              ["@constructor"] = { link = "TSConstructor" },
              ["@debug"] = { link = "TSDebug" },
              ["@define"] = { link = "TSDefine" },
              ["@error"] = { link = "TSError" },
              ["@exception"] = { link = "TSException" },
              ["@field"] = { link = "TSField" },
              ["@float"] = { link = "TSFloat" },
              ["@function"] = { link = "TSFunction" },
              ["@function.builtin"] = { link = "TSFuncBuiltin" },
              ["@function.call"] = { link = "TSFunctionCall" },
              ["@function.macro"] = { link = "TSFuncMacro" },
              ["@include"] = { link = "TSInclude" },
              ["@keyword"] = { link = "TSKeyword" },
              ["@keyword.function"] = { link = "TSKeywordFunction" },
              ["@keyword.operator"] = { link = "TSKeywordOperator" },
              ["@keyword.return"] = { link = "TSKeywordReturn" },
              ["@label"] = { link = "TSLabel" },
              ["@math"] = { link = "TSMath" },
              ["@method"] = { link = "TSMethod" },
              ["@method.call"] = { link = "TSMethodCall" },
              ["@namespace"] = { link = "TSNamespace" },
              ["@none"] = { link = "TSNone" },
              ["@number"] = { link = "TSNumber" },
              ["@operator"] = { link = "TSOperator" },
              ["@parameter"] = { link = "TSParameter" },
              ["@parameter.reference"] = { link = "TSParameterReference" },
              ["@preproc"] = { link = "TSPreProc" },
              ["@property"] = { link = "TSProperty" },
              ["@punctuation.bracket"] = { link = "TSPunctBracket" },
              ["@punctuation.delimiter"] = { link = "TSPunctDelimiter" },
              ["@punctuation.special"] = { link = "TSPunctSpecial" },
              ["@repeat"] = { link = "TSRepeat" },
              ["@storageclass"] = { link = "TSStorageClass" },
              ["@storageclass.lifetime"] = { link = "TSStorageClassLifetime" },
              ["@strike"] = { link = "TSStrike" },
              ["@string"] = { link = "TSString" },
              ["@string.escape"] = { link = "TSStringEscape" },
              ["@string.regex"] = { link = "TSStringRegex" },
              ["@string.special"] = { link = "TSStringSpecial" },
              ["@symbol"] = { link = "TSSymbol" },
              ["@tag"] = { link = "TSTag" },
              ["@tag.attribute"] = { link = "TSTagAttribute" },
              ["@tag.delimiter"] = { link = "TSTagDelimiter" },
              ["@text"] = { link = "TSText" },
              ["@text.danger"] = { link = "TSDanger" },
              ["@text.diff.add"] = { link = "diffAdded" },
              ["@text.diff.delete"] = { link = "diffRemoved" },
              ["@text.emphasis"] = { link = "TSEmphasis" },
              ["@text.environment"] = { link = "TSEnvironment" },
              ["@text.environment.name"] = { link = "TSEnvironmentName" },
              ["@text.literal"] = { link = "TSLiteral" },
              ["@text.math"] = { link = "TSMath" },
              ["@text.note"] = { link = "TSNote" },
              ["@text.reference"] = { link = "TSTextReference" },
              ["@text.strike"] = { link = "TSStrike" },
              ["@text.strong"] = { link = "TSStrong" },
              ["@text.title"] = { link = "TSTitle" },
              ["@text.todo"] = { link = "TSTodo" },
              ["@text.todo.checked"] = { link = "Green" },
              ["@text.todo.unchecked"] = { link = "Ignore" },
              ["@text.underline"] = { link = "TSUnderline" },
              ["@text.uri"] = { link = "TSURI" },
              ["@text.warning"] = { link = "TSWarning" },
              ["@todo"] = { link = "TSTodo" },
              ["@type"] = { link = "TSType" },
              ["@type.builtin"] = { link = "TSTypeBuiltin" },
              ["@type.definition"] = { link = "TSTypeDefinition" },
              ["@type.qualifier"] = { link = "TSTypeQualifier" },
              ["@uri"] = { link = "TSURI" },
              ["@variable"] = { link = "TSVariable" },
              ["@variable.builtin"] = { link = "TSVariableBuiltin" },

              ["@lsp.type.class"] = { link = "TSType" },
              ["@lsp.type.comment"] = { link = "TSComment" },
              ["@lsp.type.decorator"] = { link = "TSFunction" },
              ["@lsp.type.enum"] = { link = "TSType" },
              ["@lsp.type.enumMember"] = { link = "TSProperty" },
              ["@lsp.type.events"] = { link = "TSLabel" },
              ["@lsp.type.function"] = { link = "TSFunction" },
              ["@lsp.type.interface"] = { link = "TSType" },
              ["@lsp.type.keyword"] = { link = "TSKeyword" },
              ["@lsp.type.macro"] = { link = "TSConstMacro" },
              ["@lsp.type.method"] = { link = "TSMethod" },
              ["@lsp.type.modifier"] = { link = "TSTypeQualifier" },
              ["@lsp.type.namespace"] = { link = "TSNamespace" },
              ["@lsp.type.number"] = { link = "TSNumber" },
              ["@lsp.type.operator"] = { link = "TSOperator" },
              ["@lsp.type.parameter"] = { link = "TSParameter" },
              ["@lsp.type.property"] = { link = "TSProperty" },
              ["@lsp.type.regexp"] = { link = "TSStringRegex" },
              ["@lsp.type.string"] = { link = "TSString" },
              ["@lsp.type.struct"] = { link = "TSType" },
              ["@lsp.type.type"] = { link = "TSType" },
              ["@lsp.type.typeParameter"] = { link = "TSTypeDefinition" },
              ["@lsp.type.variable"] = { link = "TSVariable" },
            }
          end,
          latte = function(colors)
            return {
              IblIndent = { fg = colors.mantle },
              IblScope = { fg = colors.surface1 },

              LineNr = { fg = colors.surface1 },
            }
          end,
        },
      })

      -- vim.api.nvim_command("colorscheme catppuccin")
    end,
  },
  ]]
}
