-- shows fat cursor when insert mode.
-- vim.opt.guicursor = ""

-- shows line numbers.
vim.opt.nu = true
vim.opt.relativenumber = true

-- system clipboard is not working in Windows.
vim.opt.clipboard = 'unnamedplus'

-- configures the default tab width.
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- remove line wrap.
vim.opt.wrap = false

-- related to undotree.
-- save the long undo list.
vim.opt.swapfile = false
vim.opt.backup = false
-- setup undodir directory.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- incremental search & highlight search.
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "


