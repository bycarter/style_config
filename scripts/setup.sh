#!/bin/bash

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    echo "Detected macOS. Using Homebrew for package management."
    
    # Install Homebrew if not installed
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    
    # Install required packages
    echo "Installing packages with Homebrew..."
    brew install alacritty neovim curl
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    echo "Detected Linux. Using apt for package management."
    
    # Install required packages using apt
    echo "Installing packages with apt..."
    sudo apt update
    sudo apt install -y alacritty neovim curl
else
    echo "Unsupported OS detected: $OSTYPE"
    echo "This script only supports macOS and Ubuntu/Debian Linux."
    exit 1
fi

# Create config directories
echo "Creating configuration directories..."
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/nvim

# Copy configuration files
echo "Copying configuration files..."
cp ../configs/alacritty/alacritty.toml ~/.config/alacritty/
cp ../configs/nvim/init.vim ~/.config/nvim/
cp ../configs/zsh/.zshrc ~/

# Install vim-plug for Neovim
echo "Installing vim-plug for Neovim..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install Neovim plugins
echo "Installing Neovim plugins..."
nvim --headless +PlugInstall +qall
# Run a second time to ensure colorscheme is properly loaded
nvim --headless +PlugInstall +qall

# Source new zsh configuration
echo "Sourcing zsh configuration..."
source ~/.zshrc

echo "Setup complete! Please restart your terminal."
