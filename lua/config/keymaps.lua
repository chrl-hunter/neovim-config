local keymap = vim.keymap.set

-- Save and quit
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })
keymap("n", "<leader>W", "<cmd>wa<CR>", { desc = "Save all files" })
keymap("n", "<leader>Q", "<cmd>qa<CR>", { desc = "Quit all" })
keymap("n", "<leader>!", "<cmd>q!<CR>", { desc = "Force quit" })

-- Clear search highlight
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight"} )

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window"} )
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window"} )
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window"} )
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window"} )

-- Files explorer
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
keymap("n", "<leader>E", "<cmd>Ex<CR>", { desc = "Open file explorer" })

keymap("n", "<leader>n", ":w<CR>:!norminette %<CR>", { desc = "Norminette current file" })
keymap("n", "<leader>N", ":wa<CR>:!norminette<CR>", { desc = "Norminette project" })

keymap("n", "<leader>m", ":wa<CR>:make<CR>:copen<CR>", { desc = "Make project" })
keymap("n", "<leader>j", ":cnext<CR>", { desc = "Next error" })
keymap("n", "<leader>k", ":cprev<CR>", { desc = "Previous error" })
keymap("n", "<leader>f", ":w<CR>:!flake8 %<CR>", { desc = "Flake8 current file" })
keymap("n", "<leader>t", ":w<CR>:!mypy %<CR>", { desc = "Mypy current file" })
keymap("n", "<leader>r", function()
    vim.cmd("write")

    local python = "python3"

    if vim.env.VIRTUAL_ENV then
        python = vim.env.VIRTUAL_ENV .. "/bin/python"
    end

    local file = vim.fn.shellescape(vim.fn.expand("%"))
    vim.cmd("!" .. python .. " " .. file)
end, { desc = "Run Python file" })

-- Window and buffer controls from the original configuration
keymap("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Delete buffer" })
keymap("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical split" })
keymap("n", "<leader>h", "<cmd>split<CR>", { desc = "Horizontal split" })
keymap("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
keymap("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
keymap("n", "<C-Left>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
