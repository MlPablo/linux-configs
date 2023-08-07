local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern(".git"),
  settings = {
    gopls = {
      usePlaceholders = false,
      completeUnimported = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
}

lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"json", "jsonc"}
}

lspconfig.taplo.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.bufls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"proto"}
}
