return {
	{ "nvim-lua/plenary.nvim" },

	{ "tpope/vim-fugitive" },

	{ "folke/which-key.nvim", opts = {} },

	{ "numToStr/Comment.nvim", opts = {} },

	{ "stevearc/dressing.nvim", event = "VeryLazy" },

	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },

	{ "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },

	{ "tpope/vim-sleuth", event = "BufRead" },
}
