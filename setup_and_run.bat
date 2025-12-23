@echo off
echo ==========================================
echo      Agri Disease App Setup & Run
echo ==========================================
echo.

echo [1/3] Installing dependencies...
call flutter pub get
if %errorlevel% neq 0 (
    echo [ERROR] Failed to get dependencies. Please check if Flutter is installed and added to your PATH.
    pause
    exit /b %errorlevel%
)

echo.
echo [2/3] Generating Hive Adapters and Models...
call flutter pub run build_runner build --delete-conflicting-outputs
if %errorlevel% neq 0 (
    echo [ERROR] Code generation failed.
    pause
    exit /b %errorlevel%
)

echo.
echo [3/3] Launching App...
echo Select your device in the prompt below if asked.
call flutter run

pause
