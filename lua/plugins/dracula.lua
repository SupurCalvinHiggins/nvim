return {
    {
        'Mofiqul/dracula.nvim',
        priority = 1000,
        lazy = false,
        config = function()
            require("config.dracula")
        end
    }
}
