vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tr", vim.cmd.terminal)

--move the hilghlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--set the cur to middle of the screen after move
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--past over without losing what pasting
vim.keymap.set("x", "<leader>p", '"_dP')

--delete without copy
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "<leader>D", '"_D')
vim.keymap.set("v", "<leader>d", '"_d')

--add the copy to resiger
vim.keymap.set("v", "y", '"+y')

--search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- window management to move between windows use <C>+kjlh
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
--[[ vim.keymap.set("n", "<M-k>", "<C-k>") ]]
--[[ vim.keymap.set("n", "<M-j>", "<C-j>") ]]
--[[ vim.keymap.set("n", "<M-l>", "<C-l>") ]]
--[[ vim.keymap.set("n", "<M-h>", "<C-h>") ]]

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
vim.keymap.set("n", "<leader>rf", ":RustFmt<CR>") --  go to previous tab

-----------------------
-- Copy to clipboard
--[[ vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true }) ]]
--[[ vim.api.nvim_set_keymap("n", "<leader>Y", '"+yg_', { noremap = true }) ]]
--[[ vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true }) ]]
--[[ vim.api.nvim_set_keymap("n", "<leader>yy", '"+yy', { noremap = true }) ]]

-- Paste from clipboard
--[[ vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true }) ]]
--[[ vim.api.nvim_set_keymap("n", "<leader>P", '"+P', { noremap = true }) ]]
--[[ vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true }) ]]
--[[ vim.api.nvim_set_keymap("v", "<leader>P", '"+P', { noremap = true }) ]]
