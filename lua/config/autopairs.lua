local autopairs = require("nvim-autopairs")

local opt = {
    check_ts = true,
    map_bs = false,
}
autopairs.setup(opt)

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on(
    "confirm_done",
    cmp_autopairs.on_confirm_done()
)
