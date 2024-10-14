-- Theme
vim.cmd("colorscheme rose-pine")


-- EDITOR --

vim.wo.relativenumber = true

-- KEYBINDINGS -- 
vim.keymap.set("n", "<leader>fw", "<cmd>w<cr>", { silent = true, desc = "Write" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  

-- telescope:
local telebuiltin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", telebuiltin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telebuiltin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telebuiltin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telebuiltin.help_tags, { desc = "Telescope help tags" })

-- telescope file browser:
vim.keymap.set("n", "<leader>fe", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
