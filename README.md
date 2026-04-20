# 🚀 dotfiles

![GitHub last commit](https://img.shields.io/github/last-commit/osnabrugge/dotfiles)
![License](https://img.shields.io/github/license/osnabrugge/dotfiles)
[![Powered by Chezmoi](https://img.shields.io/badge/powered%20by-chezmoi-blue)](https://github.com/twpayne/chezmoi)

Sean's personal system configuration - crafted with care and managed with precision

![Chezmoi logo](https://raw.githubusercontent.com/twpayne/chezmoi/master/assets/logo-144px.png)

## 📋 Table of Contents

- [🚀 dotfiles](#-dotfiles)
  - [📋 Table of Contents](#-table-of-contents)
  - [🌟 Overview](#-overview)
  - [✨ Features](#-features)
  - [💻 System Requirements](#-system-requirements)
  - [📁 Directory Structure](#-directory-structure)
  - [🚀 Quick Start](#-quick-start)
    - [New Installation](#new-installation)
    - [Manual Installation](#manual-installation)
  - [🔐 Secrets Management](#-secrets-management)
  - [🧩 Components](#-components)
  - [🛠️ Customization](#️-customization)
  - [🗺️ Roadmap](#️-roadmap)
  - [💡 Inspiration](#-inspiration)
  - [📄 License](#-license)

## 🌟 Overview

This repository contains my personal dotfiles, carefully organized and managed with [`chezmoi`](https://github.com/twpayne/chezmoi). Chezmoi provides a secure, flexible framework for managing dotfiles across multiple machines, ensuring consistency and ease of setup.

These dotfiles represent my ideal development environment, optimized for productivity and adaptability across different operating systems and workflows.

## ✨ Features

- **Cross-platform compatibility**: Works in Linux (WSL2 for now)
- **Version control**: Managed with Git for easy tracking and collaboration
- **Secure secrets management**: Integration with Bitwarden
- **Modular configuration**: Easily add or remove components
- **Automated setup**: Quick installation with minimal manual steps
- **Self-documented**: Clear organization and documentation

## 💻 System Requirements

- **No prerequisites required!** 🎉
- A fresh Linux installation (Ubuntu, Debian, Raspberry Pi OS)
- Internet connection for downloading packages
- Sudo access for package installation

**Optional (installed automatically):**

- [`chezmoi`](https://github.com/twpayne/chezmoi) - installed by the setup command
- [`Bitwarden CLI`](https://bitwarden.com/help/cli/) - installed during setup
- Zsh - installed and configured automatically
- Git - installed during setup

## 📁 Directory Structure

```text
dotfiles/
├── README.md                   # This documentation
├── .github/                    # GitHub specific configuration
│   ├── workflows/              # CI/CD workflows
│   │   ├── ci.yml              # Continuous integration testing
│   │   └── .renovate.json5     # Automated dependency updates
├── home/                       # User home directory files
│   ├── .chezmoiscripts/        # Scripts executed by chezmoi
|   |   ├── linux               # Linux specific scripts
│   |   ├── windows             # Windows specific scripts
│   |   └── wsl                 # WSL specific scripts
│   ├── exact_dot_oh-my-zsh/    # Oh-My-Zsh configuration
│   ├── private_dot_config/     # App configurations (treated as private)
│   ├── private_dot_gnupg/      # GPG configuration
│   └── private_dot_ssh/        # SSH configuration
├── .chezmoiroot                # Root directory marker for chezmoi
├── .chezmoiversion             # Chezmoi version compatibility info
└── install.sh                  # One-command installation script
```

## 🚀 Quick Start

### New Installation

```bash
# One-command installation (will prompt for machine type and sudo password)
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply osnabrugge
```

**What to expect:**

1. You'll be prompted to configure machine type (headless/ephemeral)
2. You'll need to enter your sudo password for package installation
3. After installation, **log out and back in** to activate zsh as your default shell
4. Bitwarden CLI will be installed automatically

**Bitwarden usage instructions:**

1. For fresh login: Use bwlogin (not bw login)
2. For unlock: Use bwunlock
3. For logout: Use bwlogout
4. Check status: Use bw status

**Display System Info:**

```bash
sysinfo
```

### Manual Installation

```bash
# Install chezmoi first if needed
sh -c "$(curl -fsLS get.chezmoi.io)"

# Initialize dotfiles
chezmoi init osnabrugge

# Preview changes (recommended)
chezmoi diff

# Apply changes
chezmoi apply
```

## 🔐 Secrets Management

Personal secrets are stored in [Bitwarden](https://bitwarden.com) and retrieved securely during setup.

**After installation**, authenticate with Bitwarden:

```bash
# After logging back in with zsh
bw login
```

The Bitwarden CLI is installed automatically during setup. If you see Node.js warnings, they're harmless - Bitwarden will work after authentication.

The setup scripts will securely fetch necessary credentials during installation.

## 🧩 Components

| Component | Purpose |
| --------- | ------- |
| Hammerspoon | macOS automation and window management |
| Oh-My-Zsh | Zsh configuration framework |
| SSH | Secure remote connections |
| GPG | Cryptographic key management |
| Git | Version control configuration |

## 🛠️ Customization

These dotfiles are designed to be easily customized:

1. Fork this repository
2. Modify the files to match your preferences
3. Update the install script if needed
4. Use `chezmoi` to apply your changes

## 🗺️ Roadmap

- [ ] Add containerized testing environment
- [ ] Impletment CI/CD for dotfiles updates
- [ ] Expand cross-platform compatibility
- [ ] Create themed terminal configurations
- [ ] Add documentation for each major component
- [ ] Improve shell script performance
- [ ] Create specialized configurations for different use cases (development, server management, etc.)

## 💡 Inspiration

This setup draws inspiration from the following excellent dotfiles repositories:

- [twpayne/dotfiles](https://github.com/twpayne/dotfiles) - For chezmoi structure and organization
- [onedr0p/dotfiles](https://github.com/onedr0p/dotfiles) - For component ideas and implementation strategies

## 📄 License

These dotfiles are licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

⚙️ Crafted with care for optimal development environments ⚙️
