local treesitter = require("nvim-treesitter.configs")

local opts = {
    ensure_installed = { "python", "lua" },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["is"] = "@block.inner",
                ["as"] = "@block.outer",
                ["if"] = "@function.inner",
                ["af"] = "@function.outer",
                ["it"] = "@block.inner",
                ["at"] = "@block.outer",
                ["ir"] = "@parameter.inner",
                ["ar"] = "@parameter.outer",
            }
        },
        move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
                ["s"] = "@class.outer",
                ["f"] = "@function.outer",
                ["t"] = "@block.outer",
                ["r"] = "@parameter.outer",
            },
            goto_previous_start = {
                ["S"] = "@class.outer",
                ["F"] = "@function.outer",
                ["T"] = "@block.outer",
                ["R"] = "@parameter.outer",
            },
        }
    },
}
treesitter.setup(opts)
