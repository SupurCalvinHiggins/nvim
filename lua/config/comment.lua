local comment = require("Comment")

local opts = {
    toggler = {
        line = "gcc",
        block = "gbc",
    },
    opleader = {
        line = "gc",
        block = "gb",
    },
    mappings = {
        extra = false,
    }
}
comment.setup(opts)
