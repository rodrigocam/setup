return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	event = "VimEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ -- If encountering errors, see telescope-fzf-native README for installation instructions
			"nvim-telescope/telescope-fzf-native.nvim",

			-- `build` is used to run some command when the plugin is installed/updated.
			-- This is only run then, not every time Neovim starts up.
			build = "make",

			-- `cond` is a condition used to determine whether this plugin should be
			-- installed and loaded.
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["jk"] = "close",
						["kj"] = "close",
					},
				},
			},
		})

		pcall(require("telescope").load_extension, "fzf")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
