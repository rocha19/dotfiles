return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "lua-language-server",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "shellcheck",
        "shfmt",
        -- "bash-language-server",
        "clangd",
        "cmakelang",
        -- "cmakelint",
        -- "codelldb",
        "css-lsp",
        "docker-compose-language-service",
        "dockerfile-language-server",
        -- "dot-language-server",
        -- "eslint-lsp",
        "biome",
        -- "vtsls",
        "html-lsp",
        -- "htmlhint",
        "htmx-lsp",
        -- "jdtls",
        -- "json-lsp jsonls",
        -- "markdown-toc",
        -- "markdownlint",
        -- "markdownlint-cli2",
        -- "marksman",
        "neocmakelsp",
        -- "nginx-language-server",
        -- "opencl-language-server",
        -- "prettier",
        -- "prettierd",
        -- "prisma-language-server",
        -- "pyright",
        -- "ruff",
        -- "ruff-lsp",
        "rust-analyzer",
        "taplo",
        "codelldb",
        "tailwindcss-language-server",
        "typescript-language-server",
        "yaml-language-server",
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      ---@type lspconfig.options
      servers = {
        cssls = {
          capabilities = Capabilities,
          -- There add every filetype you want cssls to work on
          filetypes = {
            "css",
            "scss",
            "sass",
            "postcss",
          },
          init_options = {
            -- There you can set languages to be considered as different ones by cssls I guess same as includeLanguages in VSCod
            userLanguages = {
              css = "html",
            },
          },
        },
        tailwindcss = {
          capabilities = Capabilities,
          -- There add every filetype you want tailwind to work on
          filetypes = {
            "css",
            "scss",
            "sass",
            "postcss",
            "html",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "rust",
          },
          init_options = {
            -- There you can set languages to be considered as different ones by tailwind lsp I guess same as includeLanguages in VSCod
            userLanguages = {
              rust = "html",
            },
          },
          -- Here If any of files from list will exist tailwind lsp will activate.
          root_dir = require("lspconfig").util.root_pattern(
            "tailwind.config.js",
            "tailwind.config.ts",
            "postcss.config.js",
            "postcss.config.ts",
            "windi.config.ts"
          ),
          -- root_dir = function(...)
          --   return require("lspconfig.util").root_pattern(".git")(...)
          -- end,
        },
        tsserver = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
          single_file_support = false,
          settings = {
            typescript = {
              inlayHints = {
                includeInlayParameterNameHints = "literal",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = false,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
            javascript = {
              inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true,
              },
            },
          },
        },
        html = {
          single_file_support = true,
          settings = {
            html = {
              format = {
                enable = true,
              },
            },
          },
        },
        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false,
            },
          },
        },
        jsonls = {
          settings = {
            json = {
              schemas = require("schemastore").json.schemas(),
            },
          },
        },
        -- gopls = {
        --   settings = {
        --     gopls = {
        --       experimentalPostfixCompletions = true,
        --       analyses = {
        --         unusedparams = true,
        --         shadow = true,
        --       },
        --       staticcheck = true,
        --     },
        --   },
        -- },
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
              },
            },
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              diagnostics = {
                enable = true,
                disabled = { "unresolved-proc-macro" },
              },
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                runBuildScripts = true,
              },
              -- Add clippy lints for Rust.
              checkOnSave = {
                allFeatures = true,
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              procMacro = {
                enable = true,
                ignored = {
                  ["async-trait"] = { "async_trait" },
                  ["napi-derive"] = { "napi" },
                  ["async-recursion"] = { "async_recursion" },
                  ["macro_export"] = { "macro_export" },
                },
              },
            },
          },
        },
        lua_ls = {
          -- enabled = false,
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                workspaceWord = true,
                callSnippet = "Both",
              },
              misc = {
                parameters = {
                  -- "--log-level=trace",
                },
              },
              hint = {
                enable = true,
                setType = false,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
              },
              doc = {
                privateName = { "^_" },
              },
              type = {
                castNumberToInteger = true,
              },
              diagnostics = {
                disable = { "incomplete-signature-doc", "trailing-space" },
                -- enable = false,
                groupSeverity = {
                  strong = "Warning",
                  strict = "Warning",
                },
                groupFileStatus = {
                  ["ambiguity"] = "Opened",
                  ["await"] = "Opened",
                  ["codestyle"] = "None",
                  ["duplicate"] = "Opened",
                  ["global"] = "Opened",
                  ["luadoc"] = "Opened",
                  ["redefined"] = "Opened",
                  ["strict"] = "Opened",
                  ["strong"] = "Opened",
                  ["type-check"] = "Opened",
                  ["unbalanced"] = "Opened",
                  ["unused"] = "Opened",
                },
                unusedLocalExclude = { "_*" },
              },
              format = {
                enable = false,
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                  continuation_indent_size = "2",
                },
              },
            },
          },
        },
      },
      setup = {},
    },
  },
}
