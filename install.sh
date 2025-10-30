#!/bin/bash

# Outlook Linux Installer Script
# This script sets up Outlook as a standalone Linux application

echo "Setting up Outlook Linux..."

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Make the Python script executable
chmod +x "$SCRIPT_DIR/outlook_app.py"
chmod +x "$SCRIPT_DIR/outlook_app_enhanced.py"

# Create applications directory if it doesn't exist
mkdir -p ~/.local/share/applications

# Create the desktop entry with absolute paths
cat > ~/.local/share/applications/outlook-linux.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Outlook Linux
Comment=Microsoft Outlook Web App for Linux
Exec=$SCRIPT_DIR/outlook_app.py
Icon=$SCRIPT_DIR/outlook.png
Terminal=false
Categories=Network;Email;Office;
MimeType=x-scheme-handler/mailto;
StartupWMClass=Outlook
EOF

# Make the desktop entry executable
chmod +x ~/.local/share/applications/outlook-linux.desktop

# Update desktop database
if command -v update-desktop-database &> /dev/null; then
    update-desktop-database ~/.local/share/applications/
fi

# Create a symlink in ~/.local/bin for command line access (optional)
mkdir -p ~/.local/bin
ln -sf "$SCRIPT_DIR/outlook_app.py" ~/.local/bin/outlook-linux

echo "Installation complete!"
echo ""
echo "You can now:"
echo "1. Find 'Outlook Linux' in your application menu"
echo "2. Run 'outlook-linux' from the command line (if ~/.local/bin is in your PATH)"
echo "3. Pin it to your taskbar/dock"
echo ""
echo "The application should now appear with the Outlook icon instead of Chrome."