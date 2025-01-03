# .dotfiles

This repository contains my personal **dotfiles** for setting up **Fedora 41 KDE** on an **AMD laptop**.

## Quick Setup

Follow this guide to set up your **freshly installed** Fedora 41 KDE system with ease.

### 1. Set Hostname

Change your system's hostname to something more personal:

```sh
hostnamectl set-hostname YOUR_HOSTNAME
```

> Replace `YOUR_HOSTNAME` with your desired name.

### 2. Remove Unwanted Software

Remove pre-installed applications you likely won't use:

```sh
dnf remove akregator kaddressbook kmahjongg kmines \
    kolourpaint kontact korganizer kpat ktnef kwrite \
    neochat skanpage
dnf autoremove
```

### 3. Disable and Purge Baloo

Disable Baloo's indexing service to save resources:

```sh
balooctl suspend
balooctl disable
balooctl purge
```

### 4. Install Git

Install Git without unnecessary dependencies:

```sh
dnf install --set-opt=install_weak_deps=False git
```

### 5. Clone Dotfiles

Clone this repository to your home directory:

```sh
git clone https://github.com/kareulo/dotfiles.git ~/.dotfiles
```

### 6. Link Configuration

Symlink the configuration directories and files to their respective locations:

```sh
cd ~/.dotfiles
ln -sf $(realpath fish) ~/.config/fish
ln -sf $(realpath nvim) ~/.config/nvim
ln -sf $(realpath .gitconfig) ~/.gitconfig
ln -sf $(realpath dnf.conf) /etc/dnf/dnf.conf
```

### 7. System Update

Update your system and reboot to apply changes:

```sh
dnf update -y
reboot
```

### 8. Enable Hardware Video Decoding (VA-API)

Install VA-API to improve video performance and save battery:

```sh
dnf install ffmpeg-libs libva libva-utils mesa-va-drivers mesa-vdpau-drivers
```

### 9. Install Essential Applications

#### Fish Shell

Fish shell makes your terminal more powerful and user-friendly:

```sh
dnf install fish
chsh -s $(which fish) # Set Fish as the default shell
```

#### GitHub CLI

For seamless GitHub interactions from the terminal:

```sh
dnf install dnf5-plugins
dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
dnf install gh --repo gh-cli
```

#### Neovim

**I use Neovim BTW:**

```sh
dnf install neovim wl-clipboard
```

### 10. Install Flatpak Applications

Install the following applications via **Discover**:

- **VSCode**
- **Obsidian**

---

Happy coding! 🚀
