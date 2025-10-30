#!/usr/bin/env python3
import os
import subprocess
from pathlib import Path

# --- Config ---
url = "https://outlook.office.com/mail/"

# Try to find Chrome/Chromium
chrome_paths = [
    "/usr/bin/google-chrome",
    "/usr/bin/chromium",
    "/usr/bin/chromium-browser",
]

chrome = next((p for p in chrome_paths if Path(p).exists()), None)

if chrome:
    # Get the directory where this script is located
    script_dir = Path(__file__).parent.absolute()
    user_data_dir = script_dir / "outlook-chrome-data"
    
    # Launch Chrome/Chromium in app mode with custom settings
    subprocess.run([
        chrome,
        f"--app={url}",
        f"--user-data-dir={user_data_dir}",
        "--class=Outlook",
        "--name=Outlook",
        "--no-first-run",
        "--no-default-browser-check",
        "--disable-extensions",
        "--disable-plugins",
        "--disable-translate"
    ])
else:
    # Fallback: open default browser
    import webbrowser
    webbrowser.open(url)
