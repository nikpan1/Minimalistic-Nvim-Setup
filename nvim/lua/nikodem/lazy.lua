
-- setting up lazy neovim plugin manager
-- RIP mason
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- looks for a directory lazy and runs there init.lua
require("lazy").setup({
	-- change theme by :colorscheme
  "catppuccin/nvim",
	-- nvim directory tree
	"nvim-tree/nvim-tree.lua"

})

vim.cmd.colorscheme("catppuccin-frappe")



