return { 
    {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000, 
    config = function()
        vim.cmd.colorscheme "catppuccin" --frappe, latte, macchiato, mocha are variants
    end
    }, 
    {
    "loctvl842/monokai-pro.nvim",
    config = function()
        require("monokai-pro").setup()
        -- vim.cmd.colorscheme "monokai-pro" --classic, default, machine, octagon, ristretto, sprctrum are variants
    end
    }, 
    {
        "sainnhe/everforest",
        config = function()
            -- vim.cmd.colorscheme "everforest"
        end
    },
    {
        "shaunsingh/nord.nvim",
        config = function()
            -- vim.cmd[[colorscheme nord]]
        end
    },
    { 
        'rose-pine/neovim', 
        name = 'rose-pine',
        config = function()
            require('rose-pine').setup()
            -- vim.cmd.colorscheme "rose-pine" --dawn, moon are variants, 
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            -- vim.cmd.colorscheme "tokyonight-night" --night, storm, day, moon are variants
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            -- vim.cmd.colorscheme = "kanagawa" --wave, dragon, lotus are variants
        end
    }
}