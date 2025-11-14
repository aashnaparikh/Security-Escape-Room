# 🚀 Complete Git Push & Deployment Guide

This guide will walk you through every step of pushing your Security Awareness Escape Room to GitHub and deploying it.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Method 1: Automated Setup (Easiest)](#method-1-automated-setup-easiest)
3. [Method 2: Manual Setup (Step-by-Step)](#method-2-manual-setup-step-by-step)
4. [Method 3: Using GitHub Desktop (No Command Line)](#method-3-using-github-desktop-no-command-line)
5. [Deploying to GitHub Pages](#deploying-to-github-pages)
6. [Troubleshooting](#troubleshooting)

---

## Prerequisites

### Install Git
- **Windows**: Download from https://git-scm.com/download/win
- **Mac**: Run `brew install git` or download from https://git-scm.com/download/mac
- **Linux**: Run `sudo apt-get install git` (Ubuntu/Debian) or `sudo yum install git` (RedHat/Fedora)

### Create GitHub Account
1. Go to https://github.com
2. Click "Sign up"
3. Follow the registration process

### Verify Git Installation
Open terminal/command prompt and run:
```bash
git --version
```
You should see something like: `git version 2.x.x`

---

## Method 1: Automated Setup (Easiest)

### For Mac/Linux Users:

1. **Open Terminal** in the project folder

2. **Run the setup script**:
   ```bash
   ./setup.sh
   ```

3. **Follow the prompts**:
   - Enter your name and email (for Git commits)
   - Choose whether to connect to GitHub (y/n)
   - If yes, provide your GitHub username and repository name
   - Enter your GitHub credentials when prompted

4. **Done!** The script handles everything automatically.

### For Windows Users:

1. **Open Command Prompt** in the project folder
   - Navigate to the folder containing the files
   - Or Shift+Right Click in the folder → "Open PowerShell window here"

2. **Run the setup script**:
   ```cmd
   setup.bat
   ```

3. **Follow the prompts** (same as Mac/Linux above)

4. **Done!** Your project is now on GitHub.

---

## Method 2: Manual Setup (Step-by-Step)

### Step 1: Configure Git (First Time Only)

```bash
# Set your name (shown in commits)
git config --global user.name "Your Name"

# Set your email
git config --global user.email "your.email@example.com"

# Verify configuration
git config --list
```

### Step 2: Initialize Repository

```bash
# Navigate to your project folder
cd path/to/security-escape-room

# Initialize Git repository
git init

# Verify initialization (you should see .git folder)
ls -la  # Mac/Linux
dir /a  # Windows
```

### Step 3: Stage Your Files

```bash
# Add all files to staging area
git add .

# OR add files individually
git add security-escape-room.html
git add README.md
git add setup.sh

# Check status (files should be green/staged)
git status
```

### Step 4: Create Your First Commit

```bash
# Commit with a descriptive message
git commit -m "Initial commit: Security Awareness Escape Room platform"

# Verify commit was created
git log --oneline
```

### Step 5: Create GitHub Repository

1. **Go to GitHub**: https://github.com/new
2. **Repository name**: `security-escape-room`
3. **Description**: "Gamified cybersecurity training platform"
4. **Public or Private**: Choose based on your needs
5. **Important**: Do NOT check "Initialize with README"
6. **Click**: "Create repository"

### Step 6: Connect Local to GitHub

```bash
# Set default branch to 'main'
git branch -M main

# Add GitHub as remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/security-escape-room.git

# Verify remote was added
git remote -v
```

### Step 7: Push to GitHub

```bash
# Push your code to GitHub
git push -u origin main
```

**If prompted for credentials**:
- Username: Your GitHub username
- Password: Use a **Personal Access Token** (not your GitHub password)

### Step 8: Generate Personal Access Token (If Needed)

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Give it a name: "security-escape-room"
4. Select scopes: Check "repo" (full control of private repositories)
5. Click "Generate token"
6. **Copy the token** (you won't see it again!)
7. Use this token as your password when pushing

### Step 9: Verify Push Success

1. Go to: `https://github.com/YOUR_USERNAME/security-escape-room`
2. You should see all your files listed
3. Congratulations! 🎉

---

## Method 3: Using GitHub Desktop (No Command Line)

### Step 1: Install GitHub Desktop
- Download from: https://desktop.github.com/
- Install and sign in with your GitHub account

### Step 2: Create Repository

1. **Open GitHub Desktop**
2. **File** → **Add Local Repository**
3. **Browse** to your project folder
4. If not a Git repository yet, click "**create a repository**"

### Step 3: Make Initial Commit

1. You'll see all your files listed
2. Add commit message: "Initial commit: Security Awareness Escape Room"
3. Click "**Commit to main**"

### Step 4: Publish to GitHub

1. Click "**Publish repository**" button at top
2. Enter name: `security-escape-room`
3. Choose Public or Private
4. Uncheck "Keep this code private" if you want it public
5. Click "**Publish repository**"

### Step 5: Done!
Your code is now on GitHub! View it at: `https://github.com/YOUR_USERNAME/security-escape-room`

---

## Deploying to GitHub Pages

### Enable GitHub Pages (Free Hosting)

1. **Go to your repository**: `https://github.com/YOUR_USERNAME/security-escape-room`

2. **Click "Settings"** tab (top right)

3. **Click "Pages"** in the left sidebar

4. **Under "Source"**:
   - Select branch: `main`
   - Select folder: `/ (root)`

5. **Click "Save"**

6. **Wait 1-2 minutes** for deployment

7. **Visit your live site**:
   ```
   https://YOUR_USERNAME.github.io/security-escape-room/security-escape-room.html
   ```

### Custom Domain (Optional)

If you want to use your own domain:

1. In GitHub Pages settings, enter your domain
2. In your domain registrar (GoDaddy, Namecheap, etc.):
   - Add a CNAME record pointing to: `YOUR_USERNAME.github.io`
3. Wait for DNS propagation (can take up to 24 hours)

---

## Making Future Changes

### Daily Workflow

```bash
# 1. Make your changes to files
# (Edit security-escape-room.html or other files)

# 2. Check what changed
git status
git diff

# 3. Stage changes
git add .

# 4. Commit with descriptive message
git commit -m "Add new phishing scenario to Room 3"

# 5. Push to GitHub
git push origin main
```

### If GitHub Pages is enabled, changes will automatically deploy!

---

## Troubleshooting

### Problem: "git: command not found"
**Solution**: Git is not installed. Install Git from https://git-scm.com/downloads

### Problem: "Permission denied (publickey)"
**Solutions**:
1. Use HTTPS instead of SSH: `git remote set-url origin https://github.com/USERNAME/REPO.git`
2. Or set up SSH keys: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

### Problem: "Authentication failed"
**Solution**: 
1. Generate Personal Access Token at https://github.com/settings/tokens
2. Use token as password when pushing
3. Or configure Git to remember credentials:
   ```bash
   git config --global credential.helper cache
   ```

### Problem: "fatal: remote origin already exists"
**Solution**:
```bash
# Remove existing remote
git remote remove origin

# Add correct remote
git remote add origin https://github.com/YOUR_USERNAME/security-escape-room.git
```

### Problem: "Updates were rejected because the remote contains work"
**Solution**:
```bash
# Pull changes first
git pull origin main --rebase

# Then push
git push origin main
```

### Problem: GitHub Pages shows 404
**Solutions**:
1. Wait 1-2 minutes after enabling Pages
2. Ensure your HTML file is named correctly
3. Check Actions tab for build errors
4. Try visiting: `https://YOUR_USERNAME.github.io/security-escape-room/security-escape-room.html`

### Problem: Changes not showing on GitHub Pages
**Solution**:
1. Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
2. Check GitHub Actions for deployment status
3. Wait a few minutes for propagation

---

## Git Cheat Sheet

### Essential Commands

```bash
# Check status
git status

# Stage all changes
git add .

# Commit changes
git commit -m "Your message here"

# Push to GitHub
git push origin main

# Pull latest changes
git pull origin main

# View commit history
git log --oneline

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Discard all changes
git reset --hard HEAD
```

### Branching

```bash
# Create new branch
git checkout -b feature/new-feature

# Switch branches
git checkout main

# Merge branch
git merge feature/new-feature

# Delete branch
git branch -d feature/new-feature
```

### Viewing Changes

```bash
# See what changed
git diff

# See changes in specific file
git diff security-escape-room.html

# See commit history with details
git log -p
```

---

## Alternative Deployment Options

### Option 1: Netlify (Free)
1. Go to https://app.netlify.com/drop
2. Drag your folder onto the page
3. Get instant URL like: `random-name.netlify.app`

### Option 2: Vercel (Free)
1. Install Vercel CLI: `npm install -g vercel`
2. Run: `vercel`
3. Follow prompts
4. Get URL like: `security-escape-room.vercel.app`

### Option 3: Surge (Free)
1. Install Surge: `npm install -g surge`
2. Run: `surge`
3. Follow prompts
4. Get URL like: `security-escape-room.surge.sh`

### Option 4: Firebase Hosting (Free)
1. Install Firebase CLI: `npm install -g firebase-tools`
2. Run: `firebase init hosting`
3. Deploy: `firebase deploy`

---

## Best Practices

### Commit Messages
Use clear, descriptive messages:
- ✅ "Add new password security room"
- ✅ "Fix timer display bug on mobile"
- ✅ "Update phishing email examples"
- ❌ "Update stuff"
- ❌ "Changes"
- ❌ "asdf"

### Commit Frequency
- Commit after completing a feature
- Commit before trying something risky
- Commit at the end of work session
- Don't wait too long between commits

### Branch Strategy
- `main` - Production-ready code
- `develop` - Integration branch
- `feature/name` - New features
- `bugfix/name` - Bug fixes

---

## Quick Start Commands (Copy-Paste Ready)

### Complete Setup in 5 Commands

```bash
# 1. Initialize and commit
git init
git add .
git commit -m "Initial commit: Security Awareness Escape Room"
git branch -M main

# 2. Connect to GitHub (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/security-escape-room.git

# 3. Push to GitHub
git push -u origin main
```

### Future Updates in 3 Commands

```bash
git add .
git commit -m "Your update message"
git push origin main
```

---

## Need Help?

1. **Check Git documentation**: https://git-scm.com/doc
2. **GitHub guides**: https://guides.github.com/
3. **Git command help**: `git help <command>`
4. **Stack Overflow**: Search your error message

---

**You're all set! Happy coding and stay secure! 🔒🚀**
