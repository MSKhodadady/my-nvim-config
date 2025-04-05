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
	    	end,
		["lua_ls"] = function ()
			lspconfig.lua_ls.setup{
				settings = {
				    Lua = {
					runtime = {
					    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					    version = "LuaJIT",
					},
					diagnostics = {
					    -- Get the language server to recognize the `vim` global
					    globals = { "vim" },
					},
					workspace = {
					    -- Make the server aware of Neovim runtime files
					    library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
					    enable = false,
					},
				    },
				}
			}
		end
	}
  end,

  dependencies = {
    { "mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  }
}
