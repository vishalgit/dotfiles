-- lua/keymaps.lua

-- Modes
-- normal mode = "n"
-- insert mode = "i"
-- visual mode = "v"
-- visual block mode = "x"
-- term mode = "t"
-- command mode = "c"


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local expr = { noremap = true, silent = true, expr = true }

map("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


map("n", "*", "*<C-o>", opts)

map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

map("n", "<Leader>le", ":Lex 30<CR>", opts)

map("n", "<C-l>", ":noh<CR>", opts)


map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

vim.cmd([[
    noremap YY "+y<CR>
    noremap XX "+x<CR>
]])

map("i", "jk", "<Esc>", opts)
map("v", "jk", "<Esc>", opts)
map("x", "jk", "<Esc>", opts)

