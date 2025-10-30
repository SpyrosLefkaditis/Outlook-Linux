#!/bin/bash

# Outlook Linux Universal Installer
# Author: Spyros Lefkaditis

set -e

APP_NAME="outlook-linux"
REPO_URL="https://github.com/SpyrosLefkaditis/Outlook-Linux"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
log_error() { echo -e "${RED}[ERROR]${NC} $1"; }

# Detect distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
else
    log_error "Cannot detect Linux distribution"
    exit 1
fi

log_info "Detected distribution: $DISTRO"

case $DISTRO in
    ubuntu|debian|linuxmint)
        log_info "Installing Debian package..."
        if [ -f "outlook-linux_2.0_all.deb" ]; then
            sudo dpkg -i outlook-linux_2.0_all.deb
            sudo apt-get install -f -y  # Fix dependencies if needed
        else
            log_error "Debian package not found"
            exit 1
        fi
        ;;
    arch|manjaro|endeavouros)
        log_info "Installing Arch package..."
        if [ -f "outlook-linux-2.0-1-any.pkg.tar.xz" ] || [ -f "outlook-linux-2.0-1-any.pkg.tar.zst" ]; then
            sudo pacman -U outlook-linux-*.pkg.tar.*
        else
            log_error "Arch package not found"
            exit 1
        fi
        ;;
    fedora|centos|rhel)
        log_info "Using AppImage for RPM-based distributions..."
        if [ -f "OutlookLinux-2.0-x86_64.AppImage" ]; then
            chmod +x OutlookLinux-2.0-x86_64.AppImage
            mkdir -p ~/.local/bin
            cp OutlookLinux-2.0-x86_64.AppImage ~/.local/bin/outlook-linux
            log_info "AppImage installed to ~/.local/bin/outlook-linux"
        else
            log_error "AppImage not found"
            exit 1
        fi
        ;;
    *)
        log_info "Using AppImage for unknown distribution..."
        if [ -f "OutlookLinux-2.0-x86_64.AppImage" ]; then
            chmod +x OutlookLinux-2.0-x86_64.AppImage
            mkdir -p ~/.local/bin
            cp OutlookLinux-2.0-x86_64.AppImage ~/.local/bin/outlook-linux
            log_info "AppImage installed to ~/.local/bin/outlook-linux"
        else
            log_error "AppImage not found"
            exit 1
        fi
        ;;
esac

log_success "Outlook Linux installed successfully!"
log_info "You can now find 'Outlook Linux' in your application menu."
