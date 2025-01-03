# .dotfiles

This repository contains the dotfiles for **Fedora 41 KDE on AMD laptops**.

## Step-by-step Guide

A simple guide to get your **freshly installed** Fedora 41 KDE on AMD laptop up and running.

### 1. Change Hostname

```sh
hostnamectl hostname HOSTNAME
```

> Replace `HOSTNAME` with your preferred name.

### 2. Remove Bloatware

```sh
dnf remove akregator kaddressbook kmahjongg kmines \
    kolourpaint kontact korganizer kpat ktnef kwrite \
    neochat skanpage
dnf autoremove
```

### 3. Disable Baloo

```sh
balooctl6 suspend
balooctl6 disable
balooctl6 purge
```

### 4. Install Git

```sh
dnf install --set-opt=install_weak_deps=False git
```

### 5. Clone Dotfiles

```sh
git clone https://github.com/kareulo/dotfiles.git ~/.dotfiles
```

### 6. Sync Dotfiles

```sh
cd ~/.dotfiles
ln -sf $(realpath fish) ~/.config/fish
ln -sf $(realpath nvim) ~/.config/nvim
ln -sf $(realpath .gitconfig) ~/.gitconfig
ln -sf $(realpath dnf.conf) /etc/dnf/dnf.conf
```

### 7. Upgrade System

```sh
dnf update
reboot
```

### 8. Enable H/W Video Decoding with VA-API

```sh
dnf install ffmpeg-libs libva libva-utils mesa-va-drivers mesa-vdpau-drivers
```

> VA-API improves video decoding performance, extends battery life, and saves CPU power by offloading decoding to the GPU.

### 9. Install Software

- **Fish Shell**

  ```sh
  dnf install fish
  chsh -s $(which fish) # Set Fish as the default shell
  ```

- **GitHub CLI**

  ```sh
  dnf install dnf5-plugins
  dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
  dnf install gh --repo gh-cli
  ```

- **Neovim**

  ```sh
  dnf install neovim wl-clipboard
  ```

- **Node.js + PNPM**

  ```sh
  curl -o- https://fnm.vercel.app/install | bash
  fnm install NODE_VERSION
  corepack enable pnpm
  ```

  > Replace `NODE_VERSION` with your desired version.

Happy coding!
