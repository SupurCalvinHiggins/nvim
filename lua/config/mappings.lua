-- In insert mode, pressing 'jj' will exit to normal mode.
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
