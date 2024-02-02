require("remap")

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.cursorline = true


--
-- lazy package manager: https://github.com/folke/lazy.nvim
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

plugins = {
    "folke/which-key.nvim",
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    "doums/darcula"
}

require("lazy").setup(plugins)
--
-- end package manager
-- --


-- Post Plugin Setup
--vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd[[colorscheme darcula]]
vim.opt.termguicolors = true
