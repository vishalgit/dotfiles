-- lua/plugins.lua


local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })

    print "Installing packer close and reopen Neovim.."
    vim.cmd([[ packadd packer.nvim]])
end

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({border = "rounded"})
        end,
    },
})

packer.reset()
local use = packer.use


use({
    "wbthomason/packer.nvim"
})

use({
    "morhetz/gruvbox"
})

if PACKER_BOOTSTRAP then
    require("packer").sync()
end
