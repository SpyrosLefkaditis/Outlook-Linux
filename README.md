# Outlook-Linux

A simple Linux app wrapper for Microsoft Outlook Web.  
Opens Outlook in a clean, native-like window using Chrome/Chromium app mode with proper Outlook branding and icon.

**Author:** Spyros Lefkaditis  
**Version:** 2.0

## Features

- 🎯 **Native Outlook Appearance**: Shows as separate Outlook app, not Chrome
- 🖼️ **Custom Outlook Icon**: Proper Outlook branding in taskbar and launcher  
- 🔧 **Isolated Chrome Profile**: Dedicated profile prevents conflicts with main browser
- � **Mailto Link Support**: Handle email links system-wide
- 🚀 **Fast Performance**: Optimized startup and resource usage
- 🐧 **Universal Compatibility**: Works on all major Linux distributions

---

## Installation

### AppImage (Recommended - Universal)

1. Download `OutlookLinux-2.0-x86_64.AppImage` from the [releases page](https://github.com/SpyrosLefkaditis/Outlook-Linux/releases)
2. Make executable and run:

```bash
chmod +x OutlookLinux-2.0-x86_64.AppImage
./OutlookLinux-2.0-x86_64.AppImage
```

**Benefits:**
- ✅ Works on any Linux distribution
- ✅ No installation required (portable)
- ✅ No dependencies needed
- ✅ Separate window class for proper branding

### Debian/Ubuntu Package

1. Download `outlook-linux_2.0_all.deb` from the [releases page](https://github.com/SpyrosLefkaditis/Outlook-Linux/releases)
2. Install with dpkg:

```bash
sudo dpkg -i outlook-linux_2.0_all.deb
sudo apt-get install -f  # Fix dependencies if needed
```

**Benefits:**
- ✅ System integration
- ✅ Desktop shortcut automatically created
- ✅ Appears in application menu

---

## Usage

After installation, you can:

1. **From Application Menu**: Search for "Outlook Linux" in your application launcher
2. **From Command Line**: Run `outlook-linux` (if ~/.local/bin is in your PATH)
3. **Pin to Taskbar**: Right-click the Outlook icon when running and pin it

The application will appear with the Outlook icon and behave like a native Linux application, separate from your regular Chrome browser.

---

## Requirements

**System Requirements:**
- Python 3.x
- Chrome, Chromium, or Chromium-browser
- Internet connection

**No additional Python packages required** - uses only standard library modules.

See `requirements.txt` for detailed system requirements and installation commands for different Linux distributions.

## Project Structure

### Core Files
- `outlook_app.py` - Main application script
- `outlook.png` - Main Outlook icon (590x590)
- `outlook-linux.desktop` - Desktop entry file
- `requirements.txt` - System requirements and dependencies
- `README.md` - This documentation

### Multi-Resolution Icons
- `outlook-24.png`, `outlook-32.png`, `outlook-48.png`, `outlook-256.png` - Various sizes for different display contexts

### Distribution Packages
- `packages/outlook-linux_2.0_all.deb` - Debian/Ubuntu package (85KB)
- `packages/OutlookLinux-2.0-x86_64.AppImage` - Universal Linux package (218KB)
- `packages/RELEASE_NOTES.md` - Version 2.0 release documentation

---

## Development

### Building from Source

1. Clone the repository:
```bash
git clone https://github.com/SpyrosLefkaditis/Outlook-Linux.git
cd Outlook-Linux
```

2. Run directly:
```bash
python3 outlook_app.py
```

3. Create desktop integration:
```bash
# Copy desktop file to applications directory
cp outlook-linux.desktop ~/.local/share/applications/
# Update paths in the desktop file to match your installation location
```

### Technical Details

- **Window Class**: Uses `--class=Outlook` for .deb package, `--class=OutlookAppImage` for AppImage
- **Profile Isolation**: Separate Chrome profiles prevent conflicts with main browser
- **Icon Resolution**: Multiple icon sizes ensure crisp display at different scales
- **Cross-Platform**: Works on major Linux distributions (Ubuntu, Debian, Fedora, Arch, etc.)

---

## Troubleshooting

**Chrome/Chromium not found**: The app automatically detects Chrome, Chromium, or Chromium-browser. If none are installed, install one:
```bash
# Ubuntu/Debian
sudo apt install chromium-browser
# Fedora
sudo dnf install chromium
# Arch Linux  
sudo pacman -S chromium
```

**Window still shows Chrome icon**: 
- For .deb package: Try logging out and back in
- For AppImage: Make sure you're running the latest version with separate window class

**AppImage won't run**: Make sure it has execute permissions:
```bash
chmod +x OutlookLinux-2.0-x86_64.AppImage
```

**Package installation issues**: 
- For .deb: Run `sudo apt-get install -f` after dpkg to fix dependencies
- Check that Python 3 is installed: `python3 --version`

## Support

- **GitHub Issues**: [Report bugs or request features](https://github.com/SpyrosLefkaditis/Outlook-Linux/issues)
- **Author**: Spyros Lefkaditis
- **Email**: info@spyroslefkaditis.com

---

**Developed with ❤️ for the Linux community**