export PNPM_HOME="$HOME/.local/share/pnpm"

# Add PNPM_HOME to PATH if it is not already present
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
