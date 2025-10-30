# Outlook-Linux

A simple Linux app wrapper for Microsoft Outlook Web.  
Opens Outlook in a clean, native-like window using Chrome/Chromium app mode with proper Outlook branding and icon.

**Features:**
- 🎯 Appears as a separate Outlook application (not Chrome)
- 🖼️ Custom Outlook icon in taskbar and application launcher
- 🔧 Isolated Chrome profile for better performance
- 📦 Pre-built `.deb` package for easy installation
- 🚀 Works with Chrome, Chromium, or Chromium-browser

---

## Installation Options

### Option 1: Pre-built Package (Recommended)

1. Go to the [Releases page](https://github.com/SpyrosLefkaditis/Outlook-Linux/releases/tag/v1.0) and download the latest `outlook-app.deb`.

2. Open a terminal in the folder where you downloaded the file and run:

```bash
sudo dpkg -i outlook-app.deb
```

### Option 2: Source Installation

1. Clone or download this repository
2. Run the installer script:

```bash
cd Outlook-Linux
./install.sh
```

This will:
- Set up the application with proper permissions
- Create a desktop entry with Outlook icon
- Add the app to your application menu
- Install to your user directory (~/.local)

---

## Usage

After installation, you can:

1. **From Application Menu**: Search for "Outlook Linux" in your application launcher
2. **From Command Line**: Run `outlook-linux` (if ~/.local/bin is in your PATH)
3. **Pin to Taskbar**: Right-click the Outlook icon when running and pin it

The application will appear with the Outlook icon and behave like a native Linux application, separate from your regular Chrome browser.

---

## Files

### Application Files
- `outlook_app.py` - Main application script
- `outlook.png` - Outlook icon file
- `install.sh` - User installation script
- `outlook-linux.desktop` - Desktop entry file

### Distribution Packages
- `packages/` - Ready-to-install packages for different distributions:
  - `outlook-linux_2.0_all.deb` - Debian/Ubuntu package
  - `OutlookLinux-2.0-x86_64.AppImage` - Universal AppImage
  - `PKGBUILD` - Arch Linux package build file
  - `install-outlook-linux.sh` - Universal installer script

---

## Available Packages

The `packages/` directory contains ready-to-install packages for different Linux distributions:

### 📦 **Debian/Ubuntu Package**
```bash
sudo dpkg -i packages/outlook-linux_2.0_all.deb
sudo apt-get install -f  # Fix dependencies if needed
```

### 🖼️ **AppImage (Universal)**
```bash
chmod +x packages/OutlookLinux-2.0-x86_64.AppImage
./packages/OutlookLinux-2.0-x86_64.AppImage
```

### 🏗️ **Arch Linux**
```bash
# Copy PKGBUILD to a build directory and run:
makepkg -si
```

### 🔧 **Universal Installer**
```bash
chmod +x packages/install-outlook-linux.sh
./packages/install-outlook-linux.sh
```
*Auto-detects your Linux distribution and installs the appropriate package*

---

## Troubleshooting

**Chrome/Chromium not found**: The app will automatically detect Chrome, Chromium, or Chromium-browser. If none are installed, it will fall back to your default browser.

**Icon not showing**: Make sure the `outlook.png` file is in the same directory as the script and run `./install.sh` again.

**Window still shows Chrome icon**: Try logging out and back in, or restart your desktop environment for the window manager to recognize the new application class.