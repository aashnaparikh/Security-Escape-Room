@echo off
REM Security Awareness Escape Room - Setup Script for Windows
REM This script helps you set up Git and deploy your project

echo ====================================================
echo 🔒 Security Awareness Escape Room - Setup Assistant
echo ====================================================
echo.

REM Check if Git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git is not installed. Please install Git first:
    echo    Download from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo ✅ Git is installed
echo.

REM Check if already a git repository
if exist ".git" (
    echo ⚠️  This directory is already a Git repository.
    set /p continue_anyway="Do you want to continue anyway? (y/n): "
    if /i not "%continue_anyway%"=="y" (
        echo Exiting...
        exit /b 0
    )
) else (
    REM Initialize Git repository
    echo 📦 Initializing Git repository...
    git init
    echo ✅ Git repository initialized
    echo.
)

REM Configure Git user if needed
for /f "tokens=*" %%a in ('git config user.name') do set git_user_name=%%a
if "%git_user_name%"=="" (
    set /p git_name="Enter your name for Git commits: "
    git config user.name "%git_name%"
)

for /f "tokens=*" %%a in ('git config user.email') do set git_user_email=%%a
if "%git_user_email%"=="" (
    set /p git_email="Enter your email for Git commits: "
    git config user.email "%git_email%"
)

echo ✅ Git user configured
for /f "tokens=*" %%a in ('git config user.name') do echo    Name: %%a
for /f "tokens=*" %%a in ('git config user.email') do echo    Email: %%a
echo.

REM Add files
echo 📝 Adding files to Git...
git add .
echo ✅ Files added
echo.

REM Create initial commit
echo 💾 Creating initial commit...
git commit -m "Initial commit: Security Awareness Escape Room platform"
echo ✅ Initial commit created
echo.

REM Set branch name to main
echo 🌿 Setting default branch to 'main'...
git branch -M main
echo ✅ Branch set to 'main'
echo.

REM Ask about GitHub
echo ===============
echo 🐙 GitHub Setup
echo ===============
set /p use_github="Do you want to connect this to a GitHub repository? (y/n): "

if /i "%use_github%"=="y" (
    echo.
    echo Please create a repository on GitHub first:
    echo 1. Go to https://github.com/new
    echo 2. Name it: security-escape-room
    echo 3. Do NOT initialize with README
    echo 4. Click 'Create repository'
    echo.
    pause
    
    set /p github_user="Enter your GitHub username: "
    set /p repo_name="Enter the repository name (default: security-escape-room): "
    if "%repo_name%"=="" set repo_name=security-escape-room
    
    echo.
    echo 📡 Adding GitHub remote...
    git remote add origin https://github.com/%github_user%/%repo_name%.git
    echo ✅ Remote added
    echo.
    
    echo 🚀 Pushing to GitHub...
    echo You may be asked for your GitHub username and password/token.
    echo Note: Use a Personal Access Token instead of password
    echo Generate one at: https://github.com/settings/tokens
    echo.
    
    git push -u origin main
    
    if errorlevel 1 (
        echo.
        echo ⚠️  Push failed. This might be due to authentication.
        echo Try these steps:
        echo 1. Generate a Personal Access Token at:
        echo    https://github.com/settings/tokens
        echo 2. Use the token as your password when pushing
        echo 3. Or run manually: git push -u origin main
    ) else (
        echo.
        echo 🎉 SUCCESS! Your project is now on GitHub!
        echo View it at: https://github.com/%github_user%/%repo_name%
        echo.
        echo 🌐 To enable GitHub Pages (free hosting):
        echo 1. Go to: https://github.com/%github_user%/%repo_name%/settings/pages
        echo 2. Under 'Source', select 'main' branch
        echo 3. Click 'Save'
        echo 4. Your site will be live at:
        echo    https://%github_user%.github.io/%repo_name%/
    )
) else (
    echo ✅ Skipping GitHub setup
    echo Your local Git repository is ready!
    echo.
    echo To connect to GitHub later, run:
    echo   git remote add origin https://github.com/YOUR_USERNAME/security-escape-room.git
    echo   git push -u origin main
)

echo.
echo ==============================
echo 📋 Quick Reference Commands:
echo ==============================
echo   git status           - Check file status
echo   git add .            - Stage all changes
echo   git commit -m "msg"  - Commit changes
echo   git push             - Push to GitHub
echo   git pull             - Pull latest changes
echo   git log              - View commit history
echo.
echo 🎮 To test your escape room:
echo   Open security-escape-room.html in your browser
echo.
echo ✨ Setup complete! Happy training! 🚀
echo.
pause
