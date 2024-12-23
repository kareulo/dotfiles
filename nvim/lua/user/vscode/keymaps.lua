vim.keymap.set({ "n", "v" }, "<Leader>f", "<CMD>lua require('vscode').action('workbench.action.quickOpen')<CR>")
vim.keymap.set({ "n", "v" }, "<Leader>t", "<CMD>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
