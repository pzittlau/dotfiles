return {
	-- Add indentation guides even on blank lines
	"lukas-reineke/indent-blankline.nvim",
	-- opts = {
	-- 	char = "┊",
	-- 	show_trailing_blankline_indent = false,
	-- },

	config = function()
		require("ibl").setup({
			indent = { char = "┊" },
			scope = { enabled = false },
		})
	end,
}
