return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' }
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
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'hrsh7th/nvim-cmp'},     -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
		}
	},
  { 'github/copilot.vim' },
  { 'nvim-tree/nvim-tree.lua' },
  { 'nvim-tree/nvim-web-devicons' },
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
  { "nvim-lualine/lualine.nvim" },
  { "f-person/git-blame.nvim" },
  { 
    "prettier/vim-prettier",
    run = "npm i",
  },
  {
    "airblade/vim-gitgutter",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
    url = 'https://github.com/windwp/nvim-ts-autotag',
  },
  {
    'norcalli/nvim-colorizer.lua' 
  },
  {
    "daschw/leaf.nvim",
  }
}
