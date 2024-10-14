-- Theme
vim.cmd("colorscheme rose-pine")

-- KEYBINDINGS -- 
vim.keymap.set("n", "<leader>fw", "<cmd>w<cr>", { silent = true, desc = "Write" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  

-- telescope:
local telebuiltin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", telebuiltin.find_files, { desc = "Telescope find files" }) 
