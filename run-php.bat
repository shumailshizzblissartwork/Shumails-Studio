@echo off
setlocal
cd /d "%~dp0"

echo ========================================================
echo   Shumail's Shizz Bliss Studio - PHP Application
echo ========================================================
echo.

set "PHP_BIN=php"
where php >nul 2>nul
if %errorlevel% neq 0 (
    if exist "%~dp0php\php.exe" (
        set "PHP_BIN=%~dp0php\php.exe"
    ) else if exist "%~dp0..\php\php.exe" (
        set "PHP_BIN=%~dp0..\php\php.exe"
    ) else if exist "C:\xampp\php\php.exe" (
        set "PHP_BIN=C:\xampp\php\php.exe"
    )
)

echo Using PHP: %PHP_BIN%
echo.
echo Storefront:     http://localhost:8000/
echo Admin Panel:    http://localhost:8000/admin/
echo Admin Password: Mssa_sssss
echo.
echo Press Ctrl+C in this window to stop the server anytime.
echo.

if exist "%~dp0php-app" (
    cd "%~dp0php-app"
)

"%PHP_BIN%" -S localhost:8000
pause
