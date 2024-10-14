-- Theme
vim.cmd("colorscheme rose-pine")
-- Change
vim.keymap.set("n", "<leader>fw", "<cmd>w<cr>", { silent = true, desc = "Write" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  
