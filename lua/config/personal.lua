vim.opt.clipboard = "unnamedplus"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.cursorline = true

local function transparent_background()
	for _, group in ipairs({ "Normal", "NormalNC", "NormalFloat", "FloatBorder", "SignColumn", "EndOfBuffer" }) do
		vim.cmd("highlight " .. group .. " guibg=NONE ctermbg=NONE")
	end
end
vim.api.nvim_create_autocmd("ColorScheme", { callback = transparent_background })
transparent_background()
