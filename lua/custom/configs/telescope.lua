require("telescope").load_extensions('terraform_doc')

require("telescope").setup({
  extensions = {
    terraform_doc = {
      url_open_command = "wslview",
    }
  }
})
