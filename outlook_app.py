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
    # Launch Chrome/Chromium in app mode
    subprocess.run([chrome, "--app=" + url])
else:
    # Fallback: open default browser
    import webbrowser
    webbrowser.open(url)
