# Outlook Linux v2.0 Release Notes

**Author:** Spyros Lefkaditis  
**Release Date:** October 31, 2025

## What's New in v2.0

- ✅ **Proper Application Branding**: No more Chrome window icon - appears as native Outlook app
- ✅ **Multi-Distribution Support**: Packages for Debian/Ubuntu and universal AppImage
- ✅ **Isolated Chrome Profile**: Dedicated Chrome profile for better performance and isolation
- ✅ **Enhanced Window Management**: Better integration with Linux desktop environments

## Package Contents

### For Debian/Ubuntu (.deb)
- **File:** `outlook-linux_2.0_all.deb` (85KB)
- **Installation:** `sudo dpkg -i outlook-linux_2.0_all.deb`
- **Dependencies:** python3, chromium-browser | google-chrome-stable
- **Features:** System integration, desktop shortcut, separate window class

### AppImage (Universal) - RECOMMENDED
- **File:** `OutlookLinux-2.0-x86_64.AppImage` (218KB)
- **Installation:** `chmod +x OutlookLinux-2.0-x86_64.AppImage && ./OutlookLinux-2.0-x86_64.AppImage`
- **No dependencies required** (completely portable)
- **Features:** Separate window class, isolated profile

## Installation Instructions

### AppImage (Recommended - Universal)
1. Download `OutlookLinux-2.0-x86_64.AppImage`
2. Make executable and run:
   ```bash
   chmod +x OutlookLinux-2.0-x86_64.AppImage
   ./OutlookLinux-2.0-x86_64.AppImage
   ```

### Debian/Ubuntu (.deb package)
1. Download `outlook-linux_2.0_all.deb`
2. Install with dpkg:
   ```bash
   sudo dpkg -i outlook-linux_2.0_all.deb
   ```
3. Or use the installer script:
   ```bash
   chmod +x install-outlook-linux.sh
   ./install-outlook-linux.sh
   ```

## Features

- 🎯 **Native Outlook Appearance**: Shows as separate Outlook app, not Chrome
- 🖼️ **Custom Outlook Icon**: Proper Outlook branding in taskbar and launcher
- 🔧 **Isolated Chrome Profile**: Dedicated profile prevents conflicts with main browser
- 📧 **Mailto Link Support**: Handle email links system-wide
- 🚀 **Fast Performance**: Optimized startup and resource usage
- 🐧 **Universal Compatibility**: Works on all major Linux distributions

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
