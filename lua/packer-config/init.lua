return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use "williamboman/nvim-lsp-installer" 
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'nvim-lualine/lualine.nvim'
    use 'akinsho/toggleterm.nvim'
    use {
        "nanozuki/tabby.nvim",
        config = function() require("tabby").setup({
        tabline = require("tabby.presets").tab_with_top_win,
        }) end,
    }
    use 'mfussenegger/nvim-dap'
    use 'nvim-lua/plenary.nvim'
    use 'Shatur/neovim-cmake'
    use 'folke/which-key.nvim'
    use 'nvim-telescope/telescope.nvim' 
end)
