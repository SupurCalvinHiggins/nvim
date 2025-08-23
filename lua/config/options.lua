-- Disable the mouse.
-- vim.opt.mouse = ""

-- Enable relative line numbers.
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%{v:lnum} %{v:relnum} %r"

-- Set the default clipboard to the system clipboard.
vim.opt.clipboard = "unnamedplus"

-- Set the default tab/space behavior.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Set the number of lines above/below the cursor.
vim.opt.scrolloff = 8

-- Set the font.
vim.opt.guifont = "JetBrainsMono Nerd Font:h14"

-- Set a ruler for Python.
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt_local.colorcolumn = "89"
    end,
    desc = "Enable ruler for Python files following Ruff's default config",
})
