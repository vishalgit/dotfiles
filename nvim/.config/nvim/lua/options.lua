-- lua/options.lua

-- numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- display
vim.opt.wrap = false
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 2
vim.opt.termguicolors = true

-- behavior
vim.opt.swapfile = false
vim.opt.hidden = true
vim.opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
vim.opt.updatetime = 750
vim.opt.encoding = "utf-8"
vim.opt.shortmess:append("c")


