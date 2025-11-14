# 📋 Deployment Checklist

Use this checklist to ensure your Security Awareness Escape Room is properly deployed.

## ✅ Pre-Deployment

- [ ] Git is installed on your computer
  - Test: Run `git --version` in terminal/command prompt
  - If not installed: https://git-scm.com/downloads

- [ ] GitHub account is created
  - Sign up at: https://github.com

- [ ] Git is configured with your name and email
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"
  ```

- [ ] All project files are in one folder:
  - [ ] security-escape-room.html
  - [ ] README.md
  - [ ] GIT-GUIDE.md
  - [ ] QUICKSTART.md
  - [ ] setup.sh (Mac/Linux)
  - [ ] setup.bat (Windows)
  - [ ] .gitignore
  - [ ] LICENSE

## ✅ Local Testing

- [ ] Open security-escape-room.html in browser
- [ ] Test all 5 rooms work correctly
- [ ] Verify timer counts up
- [ ] Check score tracking
- [ ] Test on mobile/tablet (if needed)
- [ ] Verify all buttons and interactions work

## ✅ Git Setup

- [ ] Navigate to project folder in terminal
- [ ] Initialize Git repository: `git init`
- [ ] Add files to staging: `git add .`
- [ ] Create first commit: `git commit -m "Initial commit"`
- [ ] Rename branch to main: `git branch -M main`
- [ ] Check status: `git status` (should be clean)

## ✅ GitHub Repository

- [ ] Go to https://github.com/new
- [ ] Repository name: `security-escape-room`
- [ ] Add description (optional)
- [ ] Choose Public or Private
- [ ] **Do NOT** check "Initialize with README"
- [ ] Click "Create repository"
- [ ] Copy the repository URL

## ✅ Connect & Push

- [ ] Add remote: `git remote add origin YOUR_REPO_URL`
- [ ] Verify remote: `git remote -v`
- [ ] Push code: `git push -u origin main`
- [ ] Enter credentials (username + Personal Access Token)
- [ ] Verify push succeeded (check GitHub website)

## ✅ GitHub Pages Setup

- [ ] Go to repository Settings
- [ ] Click "Pages" in left sidebar
- [ ] Under Source, select "main" branch
- [ ] Click "Save"
- [ ] Wait 1-2 minutes for deployment
- [ ] Note your live URL: `https://USERNAME.github.io/REPO_NAME/security-escape-room.html`
- [ ] Visit URL to verify it works
- [ ] Test on different devices/browsers

## ✅ Post-Deployment

- [ ] Bookmark your live URL
- [ ] Share with your team/organization
- [ ] Test all features on live site
- [ ] Clear browser cache if changes don't appear
- [ ] Monitor GitHub Actions for deployment status

## ✅ Future Updates

When making changes:
- [ ] Edit files locally
- [ ] Test changes in browser
- [ ] Stage changes: `git add .`
- [ ] Commit: `git commit -m "Description of changes"`
- [ ] Push: `git push origin main`
- [ ] Wait for GitHub Pages to update (1-2 minutes)
- [ ] Clear cache and verify changes live

## ✅ Optional Enhancements

- [ ] Add custom domain to GitHub Pages
- [ ] Enable HTTPS (automatic with GitHub Pages)
- [ ] Add Google Analytics tracking
- [ ] Set up README badges
- [ ] Create custom scenarios for your organization
- [ ] Add more rooms/challenges
- [ ] Customize colors/branding
- [ ] Enable branch protection rules
- [ ] Set up pull request templates

## ✅ Documentation

- [ ] Update README with your live URL
- [ ] Add screenshots (optional)
- [ ] Document any customizations made
- [ ] Share feedback/improvements

## 🆘 Troubleshooting Checklist

If something doesn't work:
- [ ] Check Git is installed: `git --version`
- [ ] Verify you're in correct folder: `pwd` or `cd`
- [ ] Check file exists: `ls` (Mac/Linux) or `dir` (Windows)
- [ ] Verify remote URL: `git remote -v`
- [ ] Check push was successful: Look at GitHub website
- [ ] Clear browser cache: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
- [ ] Check GitHub Actions tab for errors
- [ ] Verify GitHub Pages is enabled in Settings
- [ ] Try incognito/private browsing window
- [ ] Check console for JavaScript errors: F12 → Console tab

## 📞 Getting Help

If you're stuck:
1. [ ] Read the error message carefully
2. [ ] Check GIT-GUIDE.md for detailed instructions
3. [ ] Search error message on Google
4. [ ] Check GitHub documentation
5. [ ] Review Git command help: `git help <command>`

---

## 🎉 Completion

Once all items are checked:
- ✅ Your escape room is live!
- ✅ Accessible from anywhere
- ✅ Automatically updates when you push changes
- ✅ Professional and shareable

**Congratulations! You've successfully deployed your Security Awareness Escape Room! 🚀**

---

**Quick Reference URLs:**
- Your repository: `https://github.com/YOUR_USERNAME/security-escape-room`
- Your live site: `https://YOUR_USERNAME.github.io/security-escape-room/security-escape-room.html`
- GitHub Pages settings: `https://github.com/YOUR_USERNAME/security-escape-room/settings/pages`
- Personal Access Tokens: `https://github.com/settings/tokens`
