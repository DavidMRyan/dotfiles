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
        'ShouxTech/rojo.nvim',
        config = function()
            require('rojo').setup()
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {  -- 'requires' not 'dependencies'
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
        }
    }

    use {
        "ellisonleao/gruvbox.nvim",
        config = function()
            vim.cmd [[colorscheme gruvbox]]
        end
    }
end)
