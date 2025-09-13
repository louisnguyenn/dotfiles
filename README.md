# My Dotfiles
My personal dotfiles and configuration files for my development environment.

## 🛍️ About my configuration
Here are some unique features of my configuration

- **👨‍💻 VSCode**: A fully declarative VS Code configuration. The final `settings.json` file is copied (not linked), allowing for quick on-the-fly tweaks. 

- **💻 Terminal**: A zsh shell Starship terminal with Nerd Font for a decorative and fast coding experience.

## Requirements
- Zsh
- Git
- curl (for installations)

Note: If you are on Windows, you must install WSL/Ubuntu (Linux Environment for Windows) and switch to the Zsh terminal to install my dotfiles.

## To Setup on a New System

### 1. Clone this repository:
```bash
git clone https://github.com/louisnguyenn/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run the setup script:
```bash
./scripts/config.sh
```

### 3. Reload your shell:
```bash
source ~/.zshrc
```

## What it does
- Installs Oh My Zsh (if not already installed)
- Installs Starship prompt
- Installs useful Zsh plugins:
  - zsh-autosuggestions
  - zsh-syntax-highlighting
- Creates symlinks for all configuration files
