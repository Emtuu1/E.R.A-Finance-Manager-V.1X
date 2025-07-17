
@echo off
echo ========================================
echo E.R.A SYSTEM - Encrypted Resource Assistant
echo by Emtiaz Ehan (Fokir)
echo ========================================
echo.
echo Installing E.R.A System...
echo.

REM Create ERA directory
if not exist "ERA-System" mkdir "ERA-System"
cd "ERA-System"

REM Download the main files
echo Downloading E.R.A System files...
curl -o main.py "https://raw.githubusercontent.com/YOUR-GITHUB-USERNAME/ERA-System/main/main.py"
curl -o requirements.txt "https://raw.githubusercontent.com/YOUR-GITHUB-USERNAME/ERA-System/main/requirements.txt"

REM Create templates directory and download templates
mkdir templates 2>nul
curl -o templates/base.html "https://raw.githubusercontent.com/YOUR-GITHUB-USERNAME/ERA-System/main/templates/base.html"
curl -o templates/index.html "https://raw.githubusercontent.com/YOUR-GITHUB-USERNAME/ERA-System/main/templates/index.html"
curl -o templates/vault.html "https://raw.githubusercontent.com/YOUR-GITHUB-USERNAME/ERA-System/main/templates/vault.html"
curl -o templates/expenses.html "https://raw.githubusercontent.com/YOUR-GITHUB-USERNAME/ERA-System/main/templates/expenses.html"

REM Install Python dependencies
echo Installing Python dependencies...
pip install flask cryptography

REM Create run script
echo @echo off > run-era.bat
echo echo Starting E.R.A System... >> run-era.bat
echo python main.py >> run-era.bat
echo pause >> run-era.bat

echo.
echo ========================================
echo Installation Complete!
echo ========================================
echo.
echo To run E.R.A System, double-click: run-era.bat
echo Then open your browser to: http://localhost:5000
echo.
echo Your encrypted vault is ready to use!
echo ========================================
pause
