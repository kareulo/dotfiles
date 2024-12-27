set FNM_PATH "$HOME/.local/share/fnm"

if [ -d "$FNM_PATH" ]
    fish_add_path -p "$FNM_PATH"
    fnm env | source
end
