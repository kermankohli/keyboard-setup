#!/bin/bash

echo "🎹 Setting up your keyboard configuration..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Karabiner-Elements if not installed
if ! command -v karabiner_cli &> /dev/null; then
    echo "Installing Karabiner-Elements..."
    brew install --cask karabiner-elements
fi

# Install Goku if not installed
if ! command -v goku &> /dev/null; then
    echo "Installing Goku..."
    brew install yqrashawn/goku/goku
fi

# Create config directory if it doesn't exist
echo "Setting up configuration directories..."
mkdir -p ~/.config

# Symlink configuration
echo "Creating symlinks..."
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -sfn "$SCRIPT_DIR/karabiner.edn" ~/.config/karabiner.edn

# Start Goku service
echo "Starting Goku service..."
brew services start goku

# Apply configuration
echo "Applying configuration..."
goku

echo "✨ Setup complete! Your keyboard configuration is now ready."
