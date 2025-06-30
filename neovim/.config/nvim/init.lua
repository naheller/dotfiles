local o = vim.opt

o.tabstop = 8 -- Always 8 (see :h tabstop)
o.softtabstop = 4
o.shiftwidth = 4
-- o.expandtab = true -- Works without this

o.number = true

-- Rebind split buffer navigation
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

-- Default splits to open to the right and bottom
o.splitright = true
o.splitbelow = true
