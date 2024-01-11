--this file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Simple plugins can be specified as strings
	use("rstacruz/vim-closer")
	--Vimbegood
	use("ThePrimeagen/vim-be-good")
	--telescop
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	--tokyo night theme
	use("folke/tokyonight.nvim")
	--gruvbox theme
	use({ "ellisonleao/gruvbox.nvim" })
	--catppuccin
	use({ "catppuccin/nvim", as = "catppuccin" })
	--kangawa
	use("rebelot/kanagawa.nvim")
	--xresources
	use("nekonako/xresources-nvim")
	--to navigate between windowns with C+kjlh
	use("christoomey/vim-tmux-navigator")
	--lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("jayp0521/mason-null-ls.nvim")
	--lspsaga
	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("lspsaga").setup({})
		end,
	})
	--treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	--toggleterm
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
	})
	--zenmode
	use("folke/zen-mode.nvim")
	--jsx
	use("neoclide/vim-jsx-improve")
	use("leafgarland/typescript-vim")
	use("peitalin/vim-jsx-typescript")
	--comments
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("mattn/emmet-vim")
	--TailwindCSS Colorizer CMP
	use({
		"roobert/tailwindcss-colorizer-cmp.nvim",
		-- optionally, override the default options:
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	})
	--copilot
	--[[ use("github/copilot.vim") ]]
	--lua line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	--rust
	use("rust-lang/rust.vim")
end)
