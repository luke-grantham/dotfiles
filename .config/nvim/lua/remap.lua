
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--nnoremap("<C-d>","<C-d>zz")
--nnoremap("<C-u>","<C-u>zz")
--nnoremap("n","nzz")
--nnoremap("N","nzz")

vim.keymap.set('n','<C-d>', '<C-d>zz')
vim.keymap.set('n','<C-u>', '<C-u>zz')
vim.keymap.set('n','n','nzz')
vim.keymap.set('n','N','Nzz')
