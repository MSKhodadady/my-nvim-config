return {
    "williamboman/mason.nvim",
    lazy = false,
    cmd={"Mason"},
    config = function()
	    require("mason").setup()
    end
}
