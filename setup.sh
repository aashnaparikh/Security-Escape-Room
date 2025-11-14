#!/bin/bash

# Security Awareness Escape Room - Setup Script
# This script helps you set up Git and deploy your project

echo "🔒 Security Awareness Escape Room - Setup Assistant"
echo "=================================================="
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   - Windows: https://git-scm.com/download/win"
    echo "   - Mac: brew install git"
    echo "   - Linux: sudo apt-get install git"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Check if already a git repository
if [ -d ".git" ]; then
    echo "⚠️  This directory is already a Git repository."
    read -p "Do you want to continue anyway? (y/n): " continue_anyway
    if [ "$continue_anyway" != "y" ]; then
        echo "Exiting..."
        exit 0
    fi
else
    # Initialize Git repository
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
    echo ""
fi

# Configure Git user (if not already configured)
if [ -z "$(git config user.name)" ]; then
    read -p "Enter your name for Git commits: " git_name
    git config user.name "$git_name"
fi

if [ -z "$(git config user.email)" ]; then
    read -p "Enter your email for Git commits: " git_email
    git config user.email "$git_email"
fi

echo "✅ Git user configured:"
echo "   Name: $(git config user.name)"
echo "   Email: $(git config user.email)"
echo ""

# Add files
echo "📝 Adding files to Git..."
git add .
echo "✅ Files added"
echo ""

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Security Awareness Escape Room platform"
echo "✅ Initial commit created"
echo ""

# Set branch name to main
echo "🌿 Setting default branch to 'main'..."
git branch -M main
echo "✅ Branch set to 'main'"
echo ""

# Ask about GitHub
echo "🐙 GitHub Setup"
echo "==============="
read -p "Do you want to connect this to a GitHub repository? (y/n): " use_github

if [ "$use_github" == "y" ]; then
    echo ""
    echo "Please create a repository on GitHub first:"
    echo "1. Go to https://github.com/new"
    echo "2. Name it: security-escape-room"
    echo "3. Do NOT initialize with README"
    echo "4. Click 'Create repository'"
    echo ""
    read -p "Press Enter once you've created the repository..."
    
    read -p "Enter your GitHub username: " github_user
    read -p "Enter the repository name (default: security-escape-room): " repo_name
    repo_name=${repo_name:-security-escape-room}
    
    echo ""
    echo "📡 Adding GitHub remote..."
    git remote add origin "https://github.com/$github_user/$repo_name.git"
    echo "✅ Remote added"
    echo ""
    
    echo "🚀 Pushing to GitHub..."
    echo "You may be asked for your GitHub username and password/token."
    echo "Note: Use a Personal Access Token instead of password"
    echo "Generate one at: https://github.com/settings/tokens"
    echo ""
    
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 SUCCESS! Your project is now on GitHub!"
        echo "View it at: https://github.com/$github_user/$repo_name"
        echo ""
        echo "🌐 To enable GitHub Pages (free hosting):"
        echo "1. Go to: https://github.com/$github_user/$repo_name/settings/pages"
        echo "2. Under 'Source', select 'main' branch"
        echo "3. Click 'Save'"
        echo "4. Your site will be live at:"
        echo "   https://$github_user.github.io/$repo_name/"
    else
        echo ""
        echo "⚠️  Push failed. This might be due to authentication."
        echo "Try these steps:"
        echo "1. Generate a Personal Access Token at:"
        echo "   https://github.com/settings/tokens"
        echo "2. Use the token as your password when pushing"
        echo "3. Or run manually: git push -u origin main"
    fi
else
    echo "✅ Skipping GitHub setup"
    echo "Your local Git repository is ready!"
    echo ""
    echo "To connect to GitHub later, run:"
    echo "  git remote add origin https://github.com/YOUR_USERNAME/security-escape-room.git"
    echo "  git push -u origin main"
fi

echo ""
echo "📋 Quick Reference Commands:"
echo "=============================="
echo "  git status           - Check file status"
echo "  git add .            - Stage all changes"
echo "  git commit -m 'msg'  - Commit changes"
echo "  git push            - Push to GitHub"
echo "  git pull            - Pull latest changes"
echo "  git log             - View commit history"
echo ""
echo "🎮 To test your escape room:"
echo "  Open security-escape-room.html in your browser"
echo ""
echo "✨ Setup complete! Happy training! 🚀"
