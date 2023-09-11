return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = false, priority = 1000
	},
	{
		'nvim-treesitter/nvim-treesitter',
		version = false,
		build = ':TSUpdate',
		event = { 'BufReadPost', 'BufNewFile' },
		dependencies = {
			{
				'nvim-treesitter/nvim-treesitter-textobjects',
				init = function()
					require('lazy.core.loader').disable_rtp_plugin('nvim-treesitter-textobjects')
					load_textobjects = true
				end,
			}
		},
		cmd = { 'TSUpdateSync' },
		keys = {
			{ '<c-space>', desc = "Increment selection" },
			{ '<bs>', desc = "Decrement selection", mode = "x" },
		}
	},
	{
		'theprimeagen/harpoon'
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},
			      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
		}
	},
  { 'github/copilot.vim' },
  { 'nvim-tree/nvim-tree.lua' },
  { 'nvim-tree/nvim-web-devicons' },
  { 'andweeb/presence.nvim' },
  { 'alexghergh/nvim-tmux-navigation' },
  { 'akinsho/toggleterm.nvim', version = "*", config = true },
  { 
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    version = "^1.0.0",
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
  },
  { "miyakogi/conoline.vim" },
  { "APZelos/blamer.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { 
    "prettier/vim-prettier",
    run = "npm i",
  }
}
