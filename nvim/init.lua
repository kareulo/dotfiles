require("user.keymaps")
require("user.options")

if vim.g.vscode then
    require("user.vscode.keymaps")
else
    require("user.neovim.options")
end
