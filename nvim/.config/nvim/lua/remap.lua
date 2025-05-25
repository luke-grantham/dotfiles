vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)

vim.keymap.set('n','<C-d>', '<C-d>zz')
vim.keymap.set('n','<C-u>', '<C-u>zz')
vim.keymap.set('n','n','nzz')
vim.keymap.set('n','N','Nzz')

-- make current file split bigger or smaller
vim.keymap.set("n", "<leader>+", "10<C-w>+", { desc = "Make Split Wider" })
vim.keymap.set("n", "<leader>-", "10<C-w>-", { desc = "Make Split Narrower" })



-- make current file split bigger or smaller
vim.keymap.set("n", "<leader>+", "10<C-w>+", { desc = "Make Split Wider" })
vim.keymap.set("n", "<leader>-", "10<C-w>-", { desc = "Make Split Narrower" })

