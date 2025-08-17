#!/bin/bash

# VS Code configuration
# echo "Setting up VS Code with settings.json..."
# rm -f /mnt/c/Users/louis/AppData/Roaming/Code/User/settings.json
# ln -sf ~/dotfiles/vscode/settings.json /mnt/c/Users/louis/AppData/Roaming/Code/User/settings.json

# Install extensions (optional)
# if [ -f ~/dotfiles/vscode/extensions.txt ]; then
#     echo "Installing VS Code extensions..."
#     cat ~/dotfiles/vscode/extensions.txt | xargs -n 1 code --install-extension
# fi

# Install Oh My Zsh (if not already installed)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Starship
if ! command -v starship &> /dev/null; then
    echo "Installing Starship..."
    curl -sS https://starship.rs/install.sh | sh
fi

# Install zsh plugins (only if they don't exist)
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    echo "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "zsh-autosuggestions already installed"
fi

if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    echo "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
    echo "zsh-syntax-highlighting already installed"
fi

# Create symlinks
mkdir -p ~/.config ~/bin

ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/config/starship.toml ~/.config/starship.toml
ln -sf ~/dotfiles/scripts/config.sh ~/bin/config

echo "Setup completed. Run 'source ~/.zshrc' to load your configuration."
