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
    "doums/darcula",
    {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    },
    "nvim-treesitter/nvim-treesitter-context",
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
    }
}

require("lazy").setup(plugins)

-- Telescope setup (optional)
local telescope = require("telescope")
telescope.setup{}

--
-- end package manager
-- --


-- Post Plugin Setup
--vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd[[colorscheme darcula]]
vim.opt.termguicolors = true
