return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = true,
        build = ':TSUpdate',
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("config/treesitter")
        end
    }
}
