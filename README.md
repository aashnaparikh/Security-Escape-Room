# 🔒 Security Awareness Escape Room

A gamified phishing training platform where employees solve cybersecurity puzzles to "escape" from simulated breach scenarios. Makes security training actually fun and memorable instead of boring compliance checkboxes.

## 🎮 Features

### Complete Game Experience
- **5 Interactive Rooms**: Each focusing on different cybersecurity concepts
- **Real-World Scenarios**: Phishing emails, password security, URL analysis, social engineering, and attachment safety
- **Gamification**: Score tracking, timer, progress bar, and achievement system
- **Instant Feedback**: Detailed explanations for both correct and incorrect answers
- **Learning Moments**: Key takeaways after each challenge

### Security Topics Covered
1. **Phishing Detection** - Identify fake emails and suspicious domains
2. **Password Security** - Learn about strong passphrase creation
3. **URL Analysis** - Spot fake websites and typosquatting
4. **Social Engineering** - Defend against manipulation tactics
5. **Attachment Safety** - Recognize malicious file types

### User Experience
- ✅ Fully responsive design (mobile, tablet, desktop)
- ✅ Beautiful gradient UI with smooth animations
- ✅ No dependencies - pure HTML/CSS/JavaScript
- ✅ Works offline - single file application
- ✅ Comprehensive results screen with statistics

## 🚀 Quick Start

Simply open `security-escape-room.html` in any modern web browser. No installation required!

## 📁 Project Structure

```
security-escape-room/
├── security-escape-room.html    # Main application file (complete game)
└── README.md                     # This file
```

## 🔧 Git Setup & Deployment

### Step 1: Initialize Git Repository

```bash
# Navigate to your project directory
cd security-escape-room

# Initialize a new Git repository
git init

# Add all files to staging
git add .

# Make your first commit
git commit -m "Initial commit: Security Awareness Escape Room platform"
```

### Step 2: Create GitHub Repository

1. Go to [GitHub](https://github.com)
2. Click the "+" icon in the top right
3. Select "New repository"
4. Name it: `security-escape-room`
5. Add description: "Gamified cybersecurity training platform"
6. Choose Public or Private
7. **DO NOT** initialize with README (we already have one)
8. Click "Create repository"

### Step 3: Connect Local to GitHub

```bash
# Add your GitHub repository as remote origin
# Replace YOUR_USERNAME with your actual GitHub username
git remote add origin https://github.com/YOUR_USERNAME/security-escape-room.git

# Verify remote was added
git remote -v

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 4: Enable GitHub Pages (Optional)

To host the game for free on GitHub Pages:

1. Go to your repository on GitHub
2. Click "Settings" tab
3. Scroll to "Pages" section (left sidebar)
4. Under "Source", select "main" branch
5. Click "Save"
6. Your site will be live at: `https://YOUR_USERNAME.github.io/security-escape-room/`

### Step 5: Future Updates

```bash
# Make changes to your files
# Then stage your changes
git add .

# Commit with a descriptive message
git commit -m "Add new phishing scenarios"

# Push to GitHub
git push origin main
```

## 📝 Common Git Commands

### Basic Workflow
```bash
# Check status of your files
git status

# Add specific file
git add filename.html

# Add all files
git add .

# Commit changes
git commit -m "Your descriptive message here"

# Push to GitHub
git push origin main

# Pull latest changes
git pull origin main
```

### Branching (For Features)
```bash
# Create new branch
git checkout -b feature/new-room

# Switch between branches
git checkout main
git checkout feature/new-room

# Merge branch into main
git checkout main
git merge feature/new-room

# Delete branch
git branch -d feature/new-room
```

### View History
```bash
# View commit history
git log

# View compact history
git log --oneline

# View changes
git diff
```

## 🎨 Customization Guide

### Adding New Rooms

Edit the `rooms` array in the JavaScript section:

```javascript
{
    title: "🔑 Room 6: Your Custom Room",
    description: "Your scenario description here",
    challenge: {
        type: "email", // or "puzzle", "scenario"
        question: "Your question here?",
        options: [
            {
                text: "Option 1",
                correct: true,
                explanation: "Why this is correct"
            },
            // Add more options...
        ],
        points: 100,
        learningPoint: "Key takeaway message"
    }
}
```

### Changing Colors

Modify the CSS gradient in the `<style>` section:

```css
body {
    background: linear-gradient(135deg, #YOUR_COLOR1 0%, #YOUR_COLOR2 100%);
}
```

### Adjusting Difficulty

- **Points**: Change `points: 100` in each room
- **Timer**: Modify timer display or add time limits
- **Hints**: Add hint buttons with additional clues

## 🌐 Deployment Options

### Option 1: GitHub Pages (Free)
- Follow Step 4 above
- Best for: Public training platforms

### Option 2: Netlify (Free)
```bash
# Install Netlify CLI
npm install -g netlify-cli

# Deploy
netlify deploy --prod --dir=.
```

### Option 3: Vercel (Free)
```bash
# Install Vercel CLI
npm install -g vercel

# Deploy
vercel --prod
```

### Option 4: Local Server
```bash
# Python 3
python -m http.server 8000

# Then visit: http://localhost:8000
```

### Option 5: Corporate Intranet
- Simply copy `security-escape-room.html` to your web server
- No special server requirements needed

## 📊 Usage Analytics

To track user engagement, you can integrate:

- **Google Analytics**: Add tracking code to `<head>`
- **Matomo**: Privacy-focused analytics
- **Custom Backend**: Add AJAX calls to log completions

## 🔒 Security Notes

This is a **training tool** and doesn't handle real sensitive data. However:

- All examples use fake emails and URLs
- No actual credentials are collected
- No external dependencies or tracking (unless you add them)
- Safe to use in corporate environments

## 🤝 Contributing

Want to add more scenarios or improve the game?

```bash
# Fork the repository on GitHub
# Clone your fork
git clone https://github.com/YOUR_USERNAME/security-escape-room.git

# Create a branch
git checkout -b feature/amazing-feature

# Make changes and commit
git commit -m "Add amazing feature"

# Push to your fork
git push origin feature/amazing-feature

# Create Pull Request on GitHub
```

## 📈 Extending the Platform

### Ideas for Enhancement:
- **Difficulty Levels**: Easy, Medium, Hard modes
- **Leaderboard**: Save and compare scores
- **Certificates**: Generate completion certificates
- **Team Mode**: Multiplayer escape room experience
- **More Scenarios**: Ransomware, USB drops, WiFi security
- **Video Integration**: Add explainer videos
- **Quiz Mode**: Quick daily security quizzes
- **Achievement Badges**: Unlock special achievements
- **Admin Dashboard**: Track team progress
- **Localization**: Multiple language support

## 🐛 Troubleshooting

### Game won't load
- Check browser console (F12) for errors
- Ensure JavaScript is enabled
- Try a different browser (Chrome, Firefox, Safari, Edge all supported)

### GitHub push fails
```bash
# If authentication fails, use Personal Access Token
# Generate token: GitHub → Settings → Developer settings → Personal access tokens
# Use token as password when pushing
```

### GitHub Pages not showing
- Wait 1-2 minutes after enabling Pages
- Check the Actions tab for build status
- Ensure `security-escape-room.html` is in the root directory

## 📄 License

This project is open source and available for educational and commercial use. Feel free to customize for your organization's training needs.

## 👥 Use Cases

- **Corporate Training**: Onboard new employees with engaging security training
- **Security Awareness Programs**: Replace boring slide presentations
- **Educational Institutions**: Teach cybersecurity concepts interactively
- **Conferences/Workshops**: Live demonstrations and competitions
- **Remote Teams**: Share link for async training completion

## 📞 Support

For questions or issues:
1. Check this README thoroughly
2. Review the code comments in `security-escape-room.html`
3. Open an issue on GitHub
4. Customize and make it your own!

## 🎯 Learning Outcomes

By completing this escape room, users will learn to:
- ✅ Identify phishing emails and suspicious domains
- ✅ Create strong, memorable passwords
- ✅ Recognize fake URLs and typosquatting attempts
- ✅ Defend against social engineering tactics
- ✅ Spot malicious attachments
- ✅ Think critically about security requests
- ✅ Verify information through official channels

---

**Made with ❤️ for better cybersecurity awareness**

Start making security training fun today! 🚀
