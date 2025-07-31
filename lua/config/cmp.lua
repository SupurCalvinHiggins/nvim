local cmp = require("cmp")

-- Set mappings.
local mapping = {
    ["<CR>"] = cmp.mapping(
        cmp.mapping.confirm({ select = false }),
        { "c", "i", "s" }
    ),
    ["<Tab>"] = cmp.mapping(
        cmp.mapping.confirm({ select = true }),
        { "c", "i", "s" }
    ),
    ["<Esc>"] = cmp.mapping(
        cmp.mapping.close(),
        { "c", "i", "s" }
    ),
    ["<C-j>"] = cmp.mapping(
        cmp.mapping.select_next_item(),
        { "c", "i", "s" }
    ),
    ["<C-k>"] = cmp.mapping(
        cmp.mapping.select_prev_item(),
        { "c", "i", "s" }
    ),
}

-- Completion for buffers.
local opts = {
    mapping = mapping,
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    },
}
cmp.setup(opts)

-- Completion for search.
local search_opts = {
    mapping = mapping,
    sources = {
        { name = 'buffer' }
    }
}
cmp.setup.cmdline({ '/', '?' }, search_opts)

-- Completion for commands.
local command_opts = {
    mapping = mapping,
    sources = {
        { name = 'path' },
        { name = 'cmdline' }
    },
    matching = { disallow_symbol_nonprefix_matching = false }
}

cmp.setup.cmdline(':', command_opts)
