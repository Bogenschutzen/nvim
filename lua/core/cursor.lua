local opts = {noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
-- ==================== Cursor Movement ====================
-- New cursor movement (the default arrow keys are used for resizing windows)
--     ^
--     c
-- < h   n >
--     t
--     v
map("n", "c", "k", opts)
map("n", "t", "j", opts)
map("n", "n", "l", opts)
-- C/T keys for 5 times u/e (faster navigation)
map("n", "C", "5k", opts)
map("n", "T", "5j", opts)
-- H/N keys for 7 times u/e (faster navigation)
map("n", "H", "b", opts)
map("n", "N", "w", opts)
-- Ctrl + c or t will move up/down the view port without moving the cursor
map("n", "<C-c>", "5<C-y>", opts)
map("n", "<C-t>", "5<C-e>", opts)
-- Disable the default s key
map("n", "j", "<nop>", opts)
map("n", "k", "<nop>", opts)
-- ==================== Insert Mode Cursor Movement ====================
map("i", "ht", "<Esc>", opts)


map("n", "e", "<nop>", opts)
map("n", "E", "<nop>", opts)

map("n", "w", "e", opts)
map("v", "w", "e", opts)
