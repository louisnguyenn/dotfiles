# My Dotfiles and Config Files
Personal configuration files for my development environment.

## Requirements
- Zsh
- Git
- curl (for installations)

Note: This will not work on Windows Powershell, it has to be on WSL (Linux Environment for Windows) or MacOS with terminals Bash or Zsh.

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
