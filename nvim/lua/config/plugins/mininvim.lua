return {
	'echasnovski/mini.nvim',
	version = '*',
	config = function()
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = true })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
		require('mini.ai').setup({ n_lines = 500})

		require('mini.icons').setup()

		require('mini.git').setup()

		require('mini.diff').setup()

		require('mini.pairs').setup()

	end
}
