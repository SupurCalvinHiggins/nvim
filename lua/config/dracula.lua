local dracula = require('dracula')

-- Set theme.
local opts = {
    italic_comment = true,
    transparent_bg = false,
    overrides = {},
}
dracula.setup(opts)

vim.cmd.colorscheme("dracula")
