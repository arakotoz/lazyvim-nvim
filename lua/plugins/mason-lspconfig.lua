return {
  "mason-org/mason-lspconfig.nvim",
  opts = function(_, opts)
    if not opts.ensure_installed then
      opts.ensure_installed = {}
    end
    vim.list_extend(opts.ensure_installed, {
      "bashls", -- bash
      "clangd", -- C++
      "jsonls", -- json
      "lua_ls", -- lua
      "neocmake", -- cmake
      "marksman", -- markdown
      "pyright", -- python static type checker
      "ruff", -- python linter and code formatter written in rust
      "taplo", -- TOML
      "texlab", -- latex
      "vtsls", -- typescript extension bundled with VS Code
      "yamlls", -- YAML
    })
  end,
  event = "BufReadPre",
  automatic_installation = true,
  dependencies = "mason-org/mason.nvim",
}
