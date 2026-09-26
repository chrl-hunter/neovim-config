-- ============================================================
-- Basic options
-- ============================================================

vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.cursorline = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 5

-- Keep swap/backup files out of the project
vim.opt.swapfile = false
vim.opt.backup = false

-- Persistent undo
vim.opt.undofile = true

-- ============================================================
-- Keymaps
-- ============================================================

-- Quit 
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<leader>W", "<cmd>wa<CR>")
vim.keymap.set("n", "<leader>Q", "<cmd>qa<CR>")
vim.keymap.set("n", "<leader>!", "<cmd>q!<CR>")

-- Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Buffer navigation
vim.keymap.set("n", "<leader>j", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<leader>k", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>")

-- File explorer
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>")

-- Split
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>split<CR>")

-- Resize windows
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2<CR>")

-- ============================================================
-- Copy/Paste
-- ============================================================

vim.opt.clipboard = "unnamedplus"

-- ============================================================
-- Transparency 
-- ============================================================

vim.cmd([[
	highlight Normal guibg=NONE ctermbg=NONE
	highlight NormalNC guibg=NONE ctermbg=NONE
	highlight NormalFloat guibg=NONE
	highlight FloatBorder guibg=NONE
	highlight SignColumn guibg=NONE ctermbg=NONE
	highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])

-- ============================================================
-- 42 Header 
-- ============================================================

vim.g.user42 = "cperez-h"
vim.g.mail42 = "cperez-h@student.42barcelona.com"

-- ============================================================
-- lazy.nvim
-- Configuration for plugin manager
-- ============================================================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		lazyrepo,
		lazypath
	})
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {0})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	-- Colorscheme that will be used when installing plugins
	install = { colorscheme = { "habamax" } },
	-- Check for plugin updates
	checker = { enabled = false},
})
