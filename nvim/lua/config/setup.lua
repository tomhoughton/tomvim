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

-- Context:
local context = require('treesitter-context').setup({
	enable = true, -- Enable this plugin.
	max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
	min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
	line_numbers = true,
	multiline_threshold = 20, -- Max number of lines to show for a single context.
	trim_scope = 'outer', -- Which context lines to discard if 'max_lines' is exceeded. Other 'inner'.
	mode = 'cursor', -- Line used to calculate context. Choices: 'cursor' 'topline'.
	separator = nil,
	zindex = 20,
	on_attach = nil,
})
