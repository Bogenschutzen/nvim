-- ==================== Window management ====================
local opts = {noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- Use <space> + new arrow keys for moving the cursor around windows
map("n", "<leader>c", "<C-w>k", opts)
map("n", "<leader>t", "<C-w>j", opts)
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>n", "<C-w>l", opts)

map("n", "qf", "<C-w>o", opts)

-- Disable the default s key
map("n", "s", "<nop>", opts)

map("n", "sc", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", opts)
map("n", "st", ":set splitbelow<CR>:split<CR>", opts)
map("n", "sh", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", opts)
map("n", "sn", ":set splitright<CR>:vsplit<CR>", opts)

-- split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map("n", "<C-up>", ":res +5<CR>", opts)
map("n", "<C-down>", ":res -5<CR>", opts)
map("n", "<C-left>", ":vertical resize -5<CR>", opts)
map("n", "<C-right>", ":vertical resize +5<CR>", opts)

-- Place the two screens side by side
map("n", "sg", "<C-w>t<C-w>K", opts)
-- Place the two screens up and down
map("n", "sr", "<C-w>t<C-w>H", opts)
-- Rotate screens 
map("n", "ssg", "<C-w>b<C-w>K", opts)
map("n", "ssr", "<C-w>b<C-w>H", opts)

-- Press <SPACE> + q to close the window below the current window
map("n", "<leader>q", "<C-w>j:q<CR>", opts)
