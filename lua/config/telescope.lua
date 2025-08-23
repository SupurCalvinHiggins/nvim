local telescope = require("telescope")

local actions = require("telescope.actions")
local opt = {
    defaults = {
        mappings = {
            i = {
                ["<CR>"] = actions.select_default,
                ["<Tab>"] = actions.select_default,
                ["<C-v>"] = actions.select_vertical,
                ["<C-h>"] = actions.select_horizontal,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<Esc>"] = actions.close,
                -- Disable unused default keymaps.
                ["<C-n>"] = false,
                ["<C-p>"] = false,
                ["<C-c>"] = false,
                ["<Down>"] = false,
                ["<Up>"] = false,
                ["<C-x>"] = false,
                ["<C-t>"] = false,
                ["<C-u>"] = false,
                ["<C-d>"] = false,
                ["<C-f>"] = false,
                ["<PageUp>"] = false,
                ["<PageDown>"] = false,
                ["<M-f>"] = false,
                ["<M-k>"] = false,
                ["<S-Tab>"] = false,
                ["<C-q>"] = false,
                ["<M-q>"] = false,
                ["<C-l>"] = false,
                ["<C-/>"] = false,
                ["<C-_>"] = false,
                ["<C-w>"] = false,
                ["<C-r><C-w>"] = false,
                ["<C-r><C-a>"] = false,
                ["<C-r><C-f>"] = false,
                ["<C-r><C-l>"] = false,
            },
            n = {
                ["<CR>"] = actions.select_default,
                ["<Tab>"] = actions.select_default,
                ["<C-v>"] = actions.select_vertical,
                ["<C-h>"] = actions.select_horizontal,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["v"] = actions.select_vertical,
                ["h"] = actions.select_horizontal,
                ["j"] = actions.move_selection_next,
                ["k"] = actions.move_selection_previous,
                ["<Esc>"] = actions.close,
                -- Disable unused default keymaps.
                ["<C-x>"] = false,
                ["<C-t>"] = false,
                ["<S-Tab>"] = false,
                ["<C-q>"] = false,
                ["<M-q>"] = false,
                ["H"] = false,
                ["M"] = false,
                ["L"] = false,
                ["<Down>"] = false,
                ["<Up>"] = false,
                ["gg"] = false,
                ["G"] = false,
                ["<C-u>"] = false,
                ["<C-d>"] = false,
                ["<C-f>"] = false,
                ["<PageUp>"] = false,
                ["<PageDown>"] = false,
                ["<M-f>"] = false,
                ["<M-k>"] = false,
                ["?"] = false,
            },
        }
    }
}
telescope.setup(opt)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})
vim.keymap.set("n", "gs", builtin.lsp_workspace_symbols, {})
vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
vim.keymap.set("n", "gt", builtin.lsp_type_definitions, {})
vim.keymap.set("n", "gr", builtin.lsp_references, {})
