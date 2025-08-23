return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        event = "BufReadPre",
        config = function()
            require("config.mason_lspconfig")
        end
    }
}
