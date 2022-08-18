local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>l', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>1', ':tabnext<CR>', opts)
map('n', '<leader>2', ':tabprevious<CR>', opts)
map('n', '<leader>3', ':tabclose<CR>', opts)
map('n', '<leader>3', ':tabclose<CR>', opts)
map('n', '<leader>jk', ':q!<CR>', opts)
map('n', '<leader>s', ':wCR>', opts)
map('i', 'jk', '<esc>', opts)
map('i', '0s', '<esc>:w<cr>', opts)
map('t', '0f', 'git commit -m "🐞 fix: " ', opts)
map('t', '0a', 'git commit -m "✨ feat: " ', opts)
map('t', '0d', 'git commit -m "📃 docs: " ', opts)
map('t', '0r', 'git commit -m "🦄 refactor: " ', opts)

-- toggleterm.nvim mapping
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- tabby
vim.api.nvim_set_keymap("n", "<leader>ta", ":$tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabn<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabp<CR>", { noremap = true })
-- move current tab to previous position
vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })

-- lsp config
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- code action
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- go xx
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- diagnostic
map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
-- leader + =
map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
