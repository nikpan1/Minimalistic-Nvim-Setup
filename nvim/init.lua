
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
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

require("nikodem.lazy")

