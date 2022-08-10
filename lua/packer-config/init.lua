return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'nvim-lualine/lualine.nvim'
    use {
        "akinsho/toggleterm.nvim", tag = 'v2.*', 
        config = function() require("toggleterm").setup() end,
    }
    use {
        "nanozuki/tabby.nvim",
        config = function() require("tabby").setup({
        tabline = require("tabby.presets").tab_with_top_win,
        }) end,
    }
    use 'mfussenegger/nvim-dap'
end)
