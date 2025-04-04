vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            require('ibl').setup()
        end
    }
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }
    --[[
    use {
        'nathom/filetype.nvim',
        config = function()
            require('plugins.config.filetype')
        end
    }
    ]]
       --
    use {
        'lukas-reineke/virt-column.nvim',
        config = function()
            require('plugins.config.virt-column')
        end
    }
    use { 'nvim-tree/nvim-web-devicons' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('plugins.config.lualine')
        end
    }
    use {
        'stevearc/aerial.nvim',
        config = function()
            require('plugins.config.aerial')
        end
    }
    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('keys.trouble')
        end
    }
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        },
        config = function()
            require('neo-tree').setup()
        end
    }
    use {
        'kylechui/nvim-surround',
        tag = '*', -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require('nvim-surround').setup()
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('plugins.config.telescope')
        end
    }
    use {
        'nvim-telescope/telescope-file-browser.nvim',
        requires = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('plugins.config.telescope-file-browser')
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        config = function()
            require('plugins.config.nvim-treesitter')
        end
    }
    use {
        'danymat/neogen',
        requires = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('neogen').setup()
        end
    }
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }
    --[[use {
        'willothy/nvim-cokeline',
        requires = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons',
            'stevearc/resession.nvim'
        },
        config = function()
            require('plugins.config.cokeline')
        end
    }]]
        --
    use {
        'romgrk/barbar.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('plugins.config.barbar')
        end
    }
    use {
        'stevearc/conform.nvim',
        config = function()
            require('plugins.config.conform')
        end
    }
    use {
        'mfussenegger/nvim-lint',
        config = function()
            require('plugins.config.lint')
        end
    }

    -- Autocompletion
    use {
        'williamboman/mason.nvim'
    }
    use {
        'williamboman/mason-lspconfig.nvim',
        requires = { 'williamboman/mason.nvim' },
        config = function()
            require('plugins.config.mason-lspconfig')
        end
    }
    use {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        requires = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
        config = function()
            require('plugins.config.mason-tool-installer')
        end
    }
    use {
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
    } -- Collection of configurations for built-in LSP client
    use {
        'mfussenegger/nvim-jdtls',
        requires = {
            --'nathom/filetype.nvim',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
    }
    --use { 'L3MON4D3/LuaSnip' }
    use {
        'hrsh7th/nvim-cmp',
        requires = { 'L3MON4D3/LuaSnip' },
        config = function()
            require('plugins.config.nvim-cmp')
        end
    }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'onsails/lspkind.nvim' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use {
        'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
        config = function()
            require('plugins.config.lsp_lines')
        end
    }
    use {
        'mfussenegger/nvim-dap',
        config = function()
            require('plugins.config.nvim-dap')
        end
    }
    use {
        'theHamsta/nvim-dap-virtual-text',
        requires = {
            'mfussenegger/nvim-dap',
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('nvim-dap-virtual-text').setup()
        end
    }
    use {
        'rcarriga/nvim-dap-ui',
        requires = { 'mfussenegger/nvim-dap' }
    }
end)
