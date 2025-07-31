local lsp_signature = require("lsp_signature")

local opts = {
    floating_window_off_x = 0,
    hint_prefix = {
        above = "↙ ",
        current = "← ",
        below = "↖ ",
    },
}

lsp_signature.setup(opts)
