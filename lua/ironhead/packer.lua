-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'wbthomason/packer.nvim'
    use 'https://github.com/rafi/awesome-vim-colorschemes'   
--    use 'http://github.com/tpope/vim-surround' --" Surrounding ysw)
--    use 'https://github.com/tpope/vim-commentary' --" For Commenting gcc & gc
--    use 'https://github.com/vim-airline/vim-airline' --" Status bar
--    use 'https://github.com/ap/vim-css-color' --" CSS Color Preview
--    use 'https://github.com/tc50cal/vim-terminal' --" Vim Terminal
--    use 'https://github.com/preservim/tagbar' --" Tagbar for code navigation
--    use 'https://github.com/terryma/vim-multiple-cursors' --" CTRL + N for multiple cursors
    use 'https://github.com/preservim/nerdtree' --" NerdTree
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
--    use {'neoclide/coc.nvim', branch = 'release'} 
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
end)
