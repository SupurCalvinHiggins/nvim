-- Enable diagnostics.
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
})

-- Enable format on save.
local format_on_save_group = vim.api.nvim_create_augroup("LspFormatOnSave", {})
local enable_format_on_save = function(client, bufnr)
    -- Clear the group to avoid formatting multiple times.
    vim.api.nvim_clear_autocmds({ group = format_on_save_group, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = format_on_save_group,
        buffer = bufnr,
        callback = function()
            -- Sort imports.
            if client.supports_method("textDocument/codeAction") then
                vim.lsp.buf.code_action({
                    context = {
                        diagnostics = {},
                        only = { "source.organizeImports" }
                    },
                    apply = true,
                    bufnr = bufnr,
                })
            end
            -- Format file.
            if client.supports_method("textDocument/formatting") then
                vim.lsp.buf.format({ bufnr = bufnr })
            end
        end,
    })
end

-- Configure Lua.
vim.lsp.config("luals", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
    on_attach = enable_format_on_save,
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
        },
    },
})
vim.lsp.enable("luals")

-- Configure Python.
vim.lsp.config("ruff", {
    cmd = { "ruff", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", ".git" },
    on_attach = enable_format_on_save,
})
vim.lsp.enable("ruff")

vim.lsp.config("pyright", {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", ".git" },
    settings = {
        python = {}
    },
})
vim.lsp.enable("pyright")

-- Use Python venv.
vim.g.python3_host_prog = vim.fn.expand("$VIRTUAL_ENV/bin/python")

vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float)
