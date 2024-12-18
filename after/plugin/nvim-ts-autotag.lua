require("nvim-ts-autotag").setup({
		-- Defaults
		enable = true,
		filetypes = {
			"html",
			"javascriptreact",
			"javascript",
			"typescript",
			"typescriptreact",
			"tsx",
			"jsx",
		},
		enable_close = false, -- Auto close tags
		enable_rename = true, -- Auto rename pairs of tags
		enable_close_on_slash = false, -- Auto close on trailing </
		-- Also override individual filetype configs, these take priority.
		-- Empty by default, useful if one of the "opts" global settings
		-- doesn't work well in a specific filetype
		per_filetype = {
			["html"] = {
				enable_close = true,
			},
		},
	})
