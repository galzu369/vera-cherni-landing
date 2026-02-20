# GitHub Setup Instructions

## Step 1: Complete GitHub CLI Authentication

1. Copy the one-time code shown in the terminal: `C145-6A2D`
2. Open this URL in your browser: https://github.com/login/device
3. Enter the code and authorize the application

## Step 2: Create GitHub Repository

Once authenticated, run these commands:

```bash
cd "c:\Users\HP\Desktop\Vera Cherni Catalao"
gh repo create vera-cherni-landing --public --source=. --remote=origin --push
```

Or manually:
1. Go to https://github.com/new
2. Create a new repository (e.g., `vera-cherni-landing`)
3. Don't initialize with README (we already have one)
4. Copy the repository URL
5. Run:
   ```bash
   git remote add origin <your-repo-url>
   git branch -M main
   git push -u origin main
   ```

## Step 3: Deploy to Vercel

### Option A: Via Vercel Dashboard (Recommended)
1. Go to https://vercel.com
2. Sign up/Login with GitHub
3. Click "Add New Project"
4. Import your GitHub repository
5. Vercel will auto-detect it as a static site
6. Click "Deploy"

### Option B: Via Vercel CLI
```bash
npm i -g vercel
vercel
```
Follow the prompts to link and deploy.

## Notes

- The repository is already initialized and committed locally
- All files are ready to push
- Vercel will automatically detect this as a static HTML site
- No build configuration needed (using CDN assets)
