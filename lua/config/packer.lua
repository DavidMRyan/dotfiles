vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use "nvim-lua/plenary.nvim"

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}	

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'  -- 'run' not 'build'
    }

    use 'mbbill/undotree'

    use {
        "mason-org/mason.nvim",
        config = function()
            require('mason').setup()
        end
    }
	
	use {
		'nvim-telescope/telescope.nvim',
		requires = {  -- 'requires' not 'dependencies'
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
		}
	}
	
	
	-- Specific Workload Plugins
	
	-- C#
	use "seblj/roslyn.nvim"
	
	-- If you don't already have these for completions:
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"	

	-- Luau / Roblox
    use {
        'ShouxTech/rojo.nvim',
        config = function()
            require('rojo').setup()
        end
    }

	
	-- Themes
    use {
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd [[colorscheme gruvbox]]
        end
    }
end)
