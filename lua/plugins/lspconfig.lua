return {
  "neovim/nvim-lspconfig",
  lazy=false,
  config = function()
	require("mason").setup()
	require("mason-lspconfig").setup()

	-- lspconfig.lua_ls.setup {}
	local lspconfig = require("lspconfig")

	-- Automatically set up all installed servers
	require("mason-lspconfig").setup_handlers {
	    function(server_name)
		lspconfig[server_name].setup {}
	    end
	}
  end,

  dependencies = {
    { "mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  }
}
