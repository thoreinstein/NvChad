local M = {}

M.disabled = {
  n = { ["<leader>fw"] = "", ["<leader>cm"] = "", ["<leader>gt"] = "" },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Toggle Breakpoint" },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.telescope = {
  plugin = true,
  n = {
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live Grep" },
    ["<leader>ts"] = {
      "<cmd> Telescope treesitter <CR>",
      "Treesitter Symbols",
    },
    ["<leader>fq"] = { "<cmd> Telescope quickfix <CR>", "Quickfix List" },
    ["<leader>fl"] = { "<cmd> Telescope loclist <CR>", "Location List" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git Commits" },
    ["<leader>gb"] = { "<cmd> Telescope git_branches <CR>", "Git Branches" },
    ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "Git Status" },
  },
}

M.thor = {
  n = {
    ["<leader>ftr"] = {
      "<cmd> Telescope terraform_doc <CR>",
      "Terraform Docs",
    },
    ["<C-h"] = { "<cmd>NvimTmuxNavigateLeft<CR>"},
    ["<C-j"] = { "<cmd>NvimTmuxNavigateDown<CR>"},
    ["<C-k"] = { "<cmd>NvimTmuxNavigateUp<CR>"},
    ["<C-l"] = { "<cmd>NvimTmuxNavigateRight<CR>"},
  },
  i = { ["jj"] = { "<ESC>", "Escape Insert Mode", opts = { nowait = true } } },
}

return M
