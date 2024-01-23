return {
	"folke/which-key.nvim",
	opts = function(_, opts)
		opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
			-- LSP
			["<leader>cl"] = { name = "+lsp" },
			-- Neogen
			["<leader>cg"] = { name = "+neogen" },
			-- Overseer
			["<leader>o"] = { name = "+overseer" },
		})
		return opts
	end,
}
