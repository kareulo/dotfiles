if status is-interactive
    # Add ~/.local/bin to PATH
    fish_add_path -m ~/.local/bin

    # Starship
    starship init fish | source
    enable_transience

    # Mise
    mise activate fish | source
end
