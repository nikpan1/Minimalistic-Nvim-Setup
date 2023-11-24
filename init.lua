
-- bar of line numbers on the left
vim.opt.number = true
vim.opt.relativenumber = true

-- pop up a new window below or on the right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- line wraping
vim.opt.wrap = false


-- use the same clipboard on vim as on the pc
-- vim.opt.clipboard = "unnamedplus"
--

-- have the cursor line always on mid
vim.opt.scrolloff = 999

-- this thing allows to move to the right as far as we want, useful for visual block mode
vim.opt.virtualedit = "block"

-- when changing something for example using find and replace
-- it shows an overview on the botton
vim.opt.inccommand = "split"

-- allows to use a bigger color palette 24 bit color support
vim.opt.termguicolors = true

-- set the tab intend by 4
vim.opt.expandtab = true
vim.opt.tabstop = 4
--
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
    "rebelot/kanagawa.nvim"
	-- change theme by :colorscheme

})


vim.cmd.colorscheme("kanagawa")



