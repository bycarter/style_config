
# Neovim Configuration Guide

## Overview
A minimal but effective Neovim setup focused on essential functionality and clean aesthetics.

## Features
- Sobrio color scheme for comfortable viewing
- NERDTree file explorer (toggle with Ctrl+b)
- Terminal integration (toggle with Ctrl+n) 
- Auto-pairs and syntax highlighting
- Clean split management
- Markdown support

## Installation
1. Install Neovim
```bash
brew install neovim
```

2. Install vim-plug plugin manager:
```bash 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Copy init.vim to config location:
```bash
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/
```

4. Open nvim and install plugins:
```bash
nvim +PlugInstall
```

## Key Mappings
- `Ctrl+b`: Toggle NERDTree file explorer
- `Ctrl+n`: Open terminal below
- `Esc`: Exit terminal mode
- Split navigation: Regular Vim splits

## Plugin Details
- vim-devicons: File icons in NERDTree
- nerdtree: File system explorer
- vim-polyglot: Language pack
- vim-markdown: Enhanced Markdown support
- sobrio: Color scheme

## File Location
Main config file: `~/.config/nvim/init.vim`
```

Would you like me to make any adjustments to this documentation?
