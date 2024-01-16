local M = {
  filetype = {
  nix = {
    function ()
      return {
        exe = "nixpkgs-fmt",
        stdin = true,
      }
    end
  },
  ["*"] = {
    require("formatter.filetypes.any").remove_trailing_whitespace
  }
}
}

return M
