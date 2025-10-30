# Outlook Linux v2.0 Release Notes

**Author:** Spyros Lefkaditis  
**Release Date:** October 31, 2025

## What's New in v2.0

- ✅ **Proper Application Branding**: No more Chrome window icon - appears as native Outlook app
- ✅ **Multi-Distribution Support**: Packages for Debian/Ubuntu, Arch Linux, and AppImage
- ✅ **Isolated Chrome Profile**: Dedicated Chrome profile for better performance
- ✅ **Enhanced Window Management**: Better integration with Linux desktop environments
- ✅ **Universal Installer**: Automatic detection and installation for different distributions

## Package Contents

### For Debian/Ubuntu (.deb)
- **File:** `outlook-linux_2.0_all.deb`
- **Installation:** `sudo dpkg -i outlook-linux_2.0_all.deb`
- **Dependencies:** python3, chromium-browser | google-chrome-stable

### For Arch Linux (.pkg.tar.xz)
- **File:** `outlook-linux-2.0-1-any.pkg.tar.xz`
- **Installation:** `sudo pacman -U outlook-linux-2.0-1-any.pkg.tar.xz`
- **Dependencies:** python, chromium

### AppImage (Universal)
- **File:** `OutlookLinux-2.0-x86_64.AppImage`
- **Installation:** Make executable and run
- **No dependencies required** (portable)

## Installation Instructions

### Quick Install (Recommended)
1. Download the release package
2. Run the universal installer:
   ```bash
   chmod +x install-outlook-linux.sh
   ./install-outlook-linux.sh
   ```

### Manual Installation
Choose the appropriate package for your distribution and follow the installation commands above.

## Features

- 🎯 Native Outlook application appearance
- 🖼️ Custom Outlook icon in taskbar and launcher
- 🔧 Isolated Chrome profile
- 📧 Mailto link support
- 🚀 Fast startup and performance
- 🐧 Works on all major Linux distributions

## System Requirements

- Linux distribution (any)
- Python 3.x
- Chrome, Chromium, or Chromium-browser
- Internet connection

## Support

For issues, bug reports, or feature requests, please visit:
https://github.com/SpyrosLefkaditis/Outlook-Linux

---
**Developed with ❤️ for the Linux community by Spyros Lefkaditis**
