return {
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        config = function()
            require("config.mason")
        end
    },
}
