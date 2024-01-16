local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local sources = {
  code_actions.cspell,
  code_actions.shellcheck,
  code_actions.refactoring,
  code_actions.statix,

  lint.ansiblelint,
  lint.commitlint,
  lint.deadnix,
  lint.dotenv_linter,
  lint.luacheck,
  lint.markdownlint,
  lint.shellcheck,
  lint.terraform_validate,
  lint.tfsec,
  lint.yamllint,
  lint.zsh,

  formatting.beautysh,
  formatting.clang_format,
  formatting.codespell,
  formatting.fixjson,
  formatting.hclfmt,
  formatting.lua_format,
  formatting.markdownlint,
  formatting.nixfmt,
  formatting.shellharden,
  formatting.shfmt,
  formatting.stylua,
  formatting.terraform_fmt,
  formatting.yamlfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
