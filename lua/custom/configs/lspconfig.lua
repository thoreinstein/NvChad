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
  "rnix",
  "terraformls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup { on_attach = on_attach, capabilities = capabilities }
end
