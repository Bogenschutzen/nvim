local opts = {noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map("n", ";", ":", opts)
map("n", "Q", ":q<CR>", opts)
map("n", "S", ":w<CR>", opts)

map("n", "''", ":NvimTreeToggle<CR>", opts)
map("n", "ll", ":SymbolsOutline<CR>", opts)

-- insert a pair of {} and go to the next line
-- map("i", "<C-{>", "<Esc>A{}<Esc>i<CR><Esc>O", opts)
