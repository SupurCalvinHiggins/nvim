local lualine = require("lualine")

local opt = {
    sections = {
        lualine_c = {
            { "filename", path = 1 }
        }
    }
}
lualine.setup(opt)
