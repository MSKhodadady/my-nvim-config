return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	vim.opt.termguicolors = true
  end,
  config = function()
    vim.api.nvim_create_autocmd("VimEnter", { command = "NvimTreeOpen" })

    require("nvim-tree").setup({})
  end,
}
