-- Set leader key.
vim.g.mapleader = " "

-- Bootstrap lazy.nvim.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins.
require("lazy").setup("plugins")

-- Load configs.
local modules = {
    "lsp",
    "options",
    "mappings",
}

for _, module in ipairs(modules) do
    require("config." .. module)
end
