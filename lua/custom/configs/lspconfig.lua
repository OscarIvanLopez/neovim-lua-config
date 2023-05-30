local on_attach = require("plugins.configs.lspconfig").on_attach()
local capabilities = require("plugins.configs.lspconfig").capabilities()

local utils = require "core.utils"

local lspconfig = require "lspconfig"

lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = utils.root_pattern("Cargo.toml"),
  settings = {
    ['rust-analyzer'] = {},
  },
})
