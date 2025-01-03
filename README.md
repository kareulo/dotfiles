# .dotfiles

Dotfiles repository for Fedora Linux.

## Prerequisites

- **Fish**

  ```sh
  dnf install fish
  ```

- **GitHub CLI**

  ```sh
  dnf install dnf5-plugins
  dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
  dnf install gh --repo gh-cli
  ```

- **Neovim**

  ```sh
  dnf install neovim
  ```

- **Node.js + PNPM**

  ```sh
  curl -o- https://fnm.vercel.app/install | bash
  fnm install NODE_VERSION
  corepack enable pnpm
  ```

  > Replace `NODE_VERSION` with your desired version.
