vim.g.mapleader = " "

vim.g.netrw_fastbrowse = 0
vim.g.netrw_liststyle = 3

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Fuzzy find in current file via telescope
vim.keymap.set("n", "<leader>fs", ":Telescope current_buffer_fuzzy_find<CR>")

-- Auto update netrw with cwd change
vim.api.nvim_create_autocmd("DirChanged", {
	pattern = "global",
	callback = function()
		vim.cmd("Explore " .. vim.fn.getcwd())
	end
})

-- Auto Comment
local comment_api = require('Comment.api')

vim.keymap.set('v', '<leader>kc', function()
	comment_api.toggle.linewise(vim.fn.visualmode())
end)

vim.keymap.set('v', '<C-/>', function()
	comment_api.toggle.linewise(vim.fn.visualmode())
end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Q", "<nop>")
