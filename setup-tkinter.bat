@echo off
setlocal

echo Checking if Python is installed...

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed!
    echo Opening Python.org for download...
    start https://www.python.org/downloads/
    pause
    exit /b
)

echo Python is installed.

echo Installing tkinter support (tk) using pip...
pip install tk

echo.
echo Done!
pause
