vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n','<C-d>', '<C-d>zz')
vim.keymap.set('n','<C-u>', '<C-u>zz')
vim.keymap.set('n','n','nzz')
vim.keymap.set('n','N','Nzz')

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })

-- make current file split bigger or smaller
vim.keymap.set("n", "<leader>+", "10<C-w>+", { desc = "Make Split Wider" })
vim.keymap.set("n", "<leader>-", "10<C-w>-", { desc = "Make Split Narrower" })

