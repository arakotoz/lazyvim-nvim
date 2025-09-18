return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- servers will be automatically installed with mason and loaded with lspconfig
        bashls = {}, -- bash
        clangd = { -- C++
          capabilities = {
            offsetEncoding = "utf-8",
          },
        },
        jsonls = {}, -- json
        lua_ls = {
          settings = {
            Lua = {
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
        marksman = {}, -- markdown
        neocmake = {}, -- cmake
        pyright = {}, -- python static type checker
        ruff = {}, -- python linter and code formatter written in rust
        taplo = {}, -- TOML
        texlab = {
          settings = {
            texlab = {
              auxDirectory = ".",
              -- bibtexFormatter = "bibtex-tidy",
              bibtexFormatter = "tex-fmt",
              -- bibtexFormatter = "texlab",
              build = {
                executable = "tectonic",
                args = {
                  "-Z",
                  "search-path=/usr/local/texlive/2025/texmf-dist/tex/latex/biblatex",
                  "--synctex",
                  "--keep-intermediates",
                  "--keep-logs",
                  "%f",
                },
                forwardSearchAfter = true,
                onSave = true,
              },
              chktex = {
                onEdit = false,
                onOpenAndSave = false,
              },
              diagnosticsDelay = 300,
              formatterLineLength = 80,
              latexFormatter = "tex-fmt",
              latexindent = {
                modifyLineBreaks = false,
              },
            },
          },
        },
        yamlls = {}, -- YAML
        vtsls = {}, -- typescript extension bundled with VS Code
      },
    },
  },
}
