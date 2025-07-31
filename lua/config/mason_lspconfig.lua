local mason_lspconfig = require("mason-lspconfig")
local opts = {
    ensure_installed = { "pyright", "lua_ls" },
    automatic_installation = true,
    automatic_enable = false,
}
mason_lspconfig.setup(opts)
