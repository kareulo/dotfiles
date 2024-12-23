vim.keymap.set("n", "<Space>", "", { noremap = true, silent = true })

vim.keymap.set("n", "<ESC>", "<ESC>:noh<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("v", "p", '"_dp', { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<Leader>p", '"+p', { noremap = true, silent = true })
