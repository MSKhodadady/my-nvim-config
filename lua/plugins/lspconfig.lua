return {
  "neovim/nvim-lspconfig",
  lazy=false,
  config = function() 
    local lspconfig = require("lspconfig")

    lspconfig.ts_ls.setup{
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
            languages = {"javascript", "typescript", "vue"},
          },
        },
      },
      filetypes = {
        "javascript",
        "typescript",
        "vue",
        "typescriptreact",
        "javascriptreact",
      },
	  }
  end,
  dependencies = {
    "mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = function() end },
  }
}
