local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "ansiblels",
  "bashls",
  "dockerls",
  "helm_ls",
  "lua_ls",
  "marksman",
  "rnix",
  "terraformls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup { on_attach = on_attach, capabilities = capabilities }
end

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        kubernetes = "*.yaml",
        ["https://json.schemastore.org/kustomization.json"] = "/kustomization.yaml",
      }
    }
  }
}
