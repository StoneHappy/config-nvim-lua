local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>1', ':tabnext<CR>', opts)
map('n', '<leader>2', ':tabprevious<CR>', opts)
map('n', '<leader>3', ':tabclose<CR>', opts)
