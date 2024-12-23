require("user.keymaps")
require("user.options")

if vim.g.vscode then
    require("user.vscode.keymaps")
    require("user.vscode.options")
else
    require("user.neovim.options")
end
