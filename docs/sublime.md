# Sublime Text Configuration Guide

## Overview
A minimal Sublime Text configuration centered on faster front-end workflows, cleaner markdown editing, and enhanced bracket handling.

## Packages
- **Package Control**  
  Manages the installation, upgrade, and removal of Sublime Text packages.

- **Emmet**  
  Speeds up HTML/CSS coding with powerful abbreviations and expansions.

- **DotENV**  
  Adds syntax highlighting and basic linting for `.env` files, useful in many Node.js and web projects.

- **Quokka**  
  Quickly evaluate JavaScript inline as you type; great for rapid prototyping and debugging.

- **Hungry Backspace**  
  Automatically removes extra whitespace when you hit backspace.

- **MarkdownPreview**  
  Lets you preview `.md` files in a browser or a built-in preview pane; ideal for documentation and READMEs.

- **BracketHighlighter**  
  Highlights matching brackets, tags, and quotes more comprehensively than Sublime’s default bracket matching.

## Installation
1. **Install Sublime Text**  
   Download the latest version from [sublimetext.com](https://www.sublimetext.com/download).
2. **Install Package Control**  
   - Open the Command Palette with <kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>.  
   - If “Install Package Control” is listed, select it. Otherwise, [download it manually](https://github.com/wbond/package_control/releases).  
3. **Install Plugins**  
   - From the Command Palette, choose “Package Control: Install Package.”  
   - Search for and install **Emmet**, **DotENV**, **Quokka**, **Hungry Backspace**, **MarkdownPreview**, **BracketHighlighter**.

## Configuration Details
- **Emmet**: By default, Emmet is enabled for HTML, XML, JSX, and CSS. You can tweak expansions and keybindings under `Preferences → Package Settings → Emmet`.
- **DotENV**: Automatically recognizes `.env` files. No extra config needed.
- **Quokka**: If prompted, configure your Quokka license or settings under `Preferences → Package Settings → Quokka`.
- **Hungry Backspace**: Active right away. Configure additional trimming behavior under `Preferences → Package Settings → Hungry Backspace`.
- **MarkdownPreview**: Use the Command Palette to open a preview or configure custom preview styles in `Preferences → Package Settings → Markdown Preview`.
- **BracketHighlighter**: Customizable bracket symbols (like parentheses, curly braces, angle brackets, tags) in `Preferences → Package Settings → BracketHighlighter`.

## Quick Troubleshooting Steps
1. **Package Control Error**  
   Update Sublime Text, then reinstall or update `Package Control.sublime-package` in `~/Library/Application Support/Sublime Text/Installed Packages`.
2. **Missing Dependencies**  
   Some plugins (e.g., Quokka) require Node.js installed. Check your system PATH if features aren’t working.
3. **SSL or macOS Errors**  
   If Sublime’s embedded Python conflicts with macOS libraries, try installing `openssl@1.1` via Homebrew or launching Sublime via Terminal with corrected `DYLD_LIBRARY_PATH`.

## File Locations
- **Packages Folder**  
  `~/Library/Application Support/Sublime Text/Packages`
- **Installed Packages Folder**  
  `~/Library/Application Support/Sublime Text/Installed Packages`
- **User Settings**  
  Access via `Sublime Text → Preferences → Settings` (opens `Preferences.sublime-settings`)
