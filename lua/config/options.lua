vim.g.user42 = "acoromin"
vim.g.mail42 = "acoromin@student.42barcelona.com"
vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.opt.colorcolumn = "81"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.bo.commentstring = "# %s"
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.bo.expandtab = true
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
		vim.bo.softtabstop = 4
		vim.bo.commentstring = "# %s"
		vim.bo.textwidth = 79
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "make",
	callback = function()
		vim.bo.expandtab = false
		vim.bo.shiftwidth = 4
		vim.bo.tabstop = 4
	end,
})
