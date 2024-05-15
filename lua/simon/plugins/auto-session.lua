return {
	'rmagatti/auto-session',
	config = function()
		require("auto-session").setup {
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
			pre_save_cmds = { "NvimTreeClose" }
		}
	end
}
