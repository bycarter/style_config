# Sublime Text Configuration Guide

## Overview
A curated setup for Sublime Text providing linting, Git integration, in-editor terminal, and language server support.

## Packages
- **Package Control** (manages installations)
- **LSP** (Language Server Protocol support)
- **SublimeLinter** (code linting interface)
- **Terminus** (integrated terminal)
- **GitSavvy** (Git commands within Sublime)
- **HTML-CSS-JS Prettify** (JavaScript/HTML/CSS formatting)

## Installation
1. **Install Sublime Text**  
   Download and install from [sublimetext.com](https://www.sublimetext.com/download).
2. **Install Package Control**  
   - Open the Command Palette (`Cmd + Shift + P` on macOS).  
   - If you see “Install Package Control” listed, select it.  
   - If not, [manually install the `.sublime-package`](https://github.com/wbond/package_control/releases).  
3. **Install the Packages**  
   - Open the Command Palette, select “Package Control: Install Package.”  
   - Search and install **LSP**, **SublimeLinter**, **Terminus**, **GitSavvy**, **HTML-CSS-JS Prettify**.

## Quick Troubleshooting Steps
1. **Update Sublime Text**  
   Make sure you’re on the latest build so it bundles modern libraries and avoids cryptographic mismatches.
2. **Reinstall Package Control**  
   - Remove `Package Control.sublime-package` from `Installed Packages/`, then download a fresh copy from GitHub releases.  
   - Restart Sublime to regenerate configs.
3. **Fix OpenSSL Mismatch (macOS)**  
   - Install `openssl@1.1` via Homebrew: `brew install openssl@1.1`.  
   - Link or export the library paths so Sublime’s embedded Python can load them (e.g., launch Sublime from Terminal with updated `DYLD_LIBRARY_PATH`).

## File Locations
- **Packages Folder**: `~/Library/Application Support/Sublime Text/Packages`
- **Installed Packages Folder**: `~/Library/Application Support/Sublime Text/Installed Packages`
- **User Settings**: `Preferences → Settings` (opens `Preferences.sublime-settings`)
