# Exit if the shell is not interactive
case $- in
    *i*) ;;      # Do nothing if interactive
    *) return ;; # Exit if not interactive
esac

# Enable history expansion with space
# E.g. typing !!<space> will replace !! with your last command
bind Space:magic-space

# Avoid duplicate entries
HISTCONTROL=erasedups:ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# History length
HISTFILESIZE=100000
HISTSIZE=500000

# Update window size after every command
shopt -s checkwinsize

# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Save multi-line commands as one command
shopt -s cmdhist

# Enable color support
if [ -x /usr/bin/dircolors ]; then
    eval "$(dircolors -b)"

    alias ls='LC_COLLATE=C ls --color=auto -Fv'
    alias grep='grep --color=auto'
fi

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Source all scripts in ~/.bashrc.d
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
