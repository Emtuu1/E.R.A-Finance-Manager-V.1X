# E.R.A System - Encrypted Resource Assistant
#                                                By Emtiaz Ehan

A secure, hacker-style password vault and expense tracker with military-grade encryption. No cloud. No leaks. Just raw local protection.

Features
Secure Password Vault (Fernet AES-based encryption)

Auto Password Generator

Expense Tracker with real-time balance

Local Web Interface (localhost:5000)

Terminal-style dark UI

Requirements
Windows 10/11

Python 3.7 or higher (auto-installed by installer)

Internet connection (only for setup)

Installation
🔹 Method 1: Quick Install (.BAT File – Recommended)
Download the file: ERA-System-Installer.bat

Right-click the .bat file → Run as Administrator

Wait while it installs Python (if needed) and required libraries

After setup, double-click run-era.bat to launch the app

Open your browser and go to: http://localhost:5000

🔸 Method 2: Manual Install
Create a folder named ERA-System

Download all repository files into that folder

Open Command Prompt in the folder

Run:

css
Copy
Edit
pip install flask cryptography
python main.py
In your browser, open: http://localhost:5000

Usage
Password Vault
Add: Enter site, username, password

Generate: Use “Generate Password” button

View: Click the hidden dots to reveal stored passwords

All entries are encrypted with Fernet (symmetric AES 128)

Expense Tracker
Add: Log income or expenses

Track: Live balance and full transaction history

Local only: All data stored in encrypted JSON

File Structure
pgsql
Copy
Edit
ERA-System/
├── main.py              # Flask app
├── run-era.bat          # Launch script
├── ERA-System-Installer.bat  # Installer (Windows only)
├── era_key.key          # Auto-generated encryption key
├── era_vault.json       # Encrypted credentials
├── era_expenses.json    # Transaction data
└── templates/           # HTML UI
    ├── base.html
    ├── index.html
    ├── vault.html
    └── expenses.html
Quick Start
Run: ERA-System-Installer.bat

Launch: run-era.bat

Visit: http://localhost:5000

Start storing secrets and tracking finances securely

Security Notes
Do NOT delete or lose era_key.key – it's required to access your encrypted data

Backup the entire ERA-System folder often

Never use on public/shared computers

Troubleshooting
Port already in use?
In main.py, change:

python
Copy
Edit
app.run(port=5001)
Then access via http://localhost:5001

Python not recognized?
Install from https://python.org
✔ Check "Add Python to PATH" during install

Missing dependencies?
Run:

nginx
Copy
Edit
pip install flask cryptography
Support
Need help or facing an issue?
Discord → emtuu


Stay safe with E.R.A System 🛡️


