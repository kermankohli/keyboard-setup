# Keyboard Configuration

This repository contains my keyboard configuration using [Goku](https://github.com/yqrashawn/GokuRakuJoudo), a tool that generates [Karabiner-Elements](https://karabiner-elements.pqrs.org/) configuration.

## Setup

### Option 1: Automatic Installation (Recommended)

Simply run the install script:

```bash
./install.sh
```

This will:
1. Install Homebrew (if not installed)
2. Install Karabiner-Elements and Goku
3. Create necessary directories
4. Symlink the configuration files
5. Start the Goku service

### Option 2: Manual Installation

If you prefer to set things up manually:

1. Install Karabiner-Elements
```bash
brew install --cask karabiner-elements
```

2. Install Goku
```bash
brew install yqrashawn/goku/goku
```

3. Create symlinks
```bash
mkdir -p ~/.config
ln -sfn "$(pwd)/karabiner.edn" ~/.config/karabiner.edn
```

4. Start Goku service
```bash
brew services start goku
```

## Configuration

The keyboard configuration is defined in `karabiner.edn`. Goku will automatically detect changes to this file and generate the corresponding Karabiner configuration.

## Structure

- `karabiner.edn`: Main configuration file
- `.gitignore`: Git ignore file
- `README.md`: This documentation
