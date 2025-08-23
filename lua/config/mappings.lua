-- In insert mode, pressing 'jj' will exit to normal mode.
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- Remap J/K to scroll down/up a half page
vim.keymap.set('n', 'J', '<C-d>', { noremap = true, silent = true })
vim.keymap.set('n', 'K', '<C-u>', { noremap = true, silent = true })
