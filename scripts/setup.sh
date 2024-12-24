#!/bin/bash

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install required packages
brew install alacritty neovim

# Create config directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/nvim

# Copy configuration files
cp ../configs/alacritty/alacritty.toml ~/.config/alacritty/
cp ../configs/nvim/init.vim ~/.config/nvim/
cp ../configs/zsh/.zshrc ~/

# Install vim-plug for Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Neovim plugins
nvim --headless +PlugInstall +qall

# Source new zsh configuration
source ~/.zshrc

echo "Setup complete! Please restart your terminal."
