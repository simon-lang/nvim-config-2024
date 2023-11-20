return {
	'lewis6991/gitsigns.nvim',
	setup = function()
		signs = {
			add = { text = '+' },
			change = { text = '~' },
			delete = { text = '_' },
			topdelete = { text = '‾' },
			changedelete = { text = '~' },
		}
		signcolumn = true
	end
}

