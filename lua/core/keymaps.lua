local opts = {noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
map("n", ";", ":", opts)
map("n", "Q", ":q<CR>", opts)
map("n", "S", ":w<CR>", opts)

-- nvimtree
map("n", "''", ":NvimTreeToggle<CR>", opts)

-- symbols
map("n", "ll", ":SymbolsOutline<CR>", opts)

-- buffline
map("n", "<C-h>", ":bp<CR>", opts)
map("n", "<C-n>", ":bn<CR>", opts)

-- insert a pair of {} and go to the next line
-- map("i", "<C-{>", "<Esc>A{}<Esc>i<CR><Esc>O", opts)
map("i", "{", "{}<Esc>i", opts)

-- debug
map("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
map("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
map("n", "<F9>", "<cmd>lua require'dap'.run_last()<cr>", opts)
map('n', '<F10>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
map("n", "<F4>", "<cmd>lua require'dap'.terminate()<cr>", opts)
map("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>", opts)
map("n", "<F6>", "<cmd>lua require'dap'.step_over()<cr>", opts)
map("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", opts)
map("n", "<F8>", "<cmd>lua require'dap'.step_out()<cr>", opts)
map("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", opts)
-- keymap("n", "<leader>dr", "lua require'dap'.repl.open()<cr>", opts)
