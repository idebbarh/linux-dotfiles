vim.g.ismail_colorscheme = "kanagawa"
function Color()
	require("gruvbox").setup({
		bold = true,
		contrast = "hard", -- can be "hard", "soft" or empty string
		transparent_mode = false,
	})
	require("tokyonight").setup({
		style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
		transparent = false, -- Enable this to disable setting the background color
	})
	-- Default options:
	require("kanagawa").setup({
		compile = false, -- enable compiling the colorscheme
		undercurl = true, -- enable undercurls
		commentStyle = { italic = true },
		functionStyle = {},
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
		typeStyle = {},
		transparent = false, -- do not set background color
		dimInactive = false, -- dim inactive window `:h hl-NormalNC`
		terminalColors = true, -- define vim.g.terminal_color_{0,17}
		colors = { -- add/modify theme and palette colors
			palette = {},
			theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		},
		overrides = function(colors) -- add/modify highlights
			return {}
		end,
		theme = "wave", -- Load "wave" theme when 'background' option is not set
		background = { -- map the value of 'background' option to a theme
			dark = "wave", -- try "dragon" !
			light = "lotus",
		},
	})
	vim.cmd.colorscheme(vim.g.ismail_colorscheme)
	--[[ vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) ]]
	--[[ vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) ]]
	local hl = function(thing, opts)
		vim.api.nvim_set_hl(0, thing, opts)
	end
	hl("SignColumn", {
		bg = "none",
	})
	hl("ColorColumn", {
		ctermbg = 0,
		bg = "#555555",
	})
	hl("CursorLineNR", {
		bg = "None",
	})
end
Color()
