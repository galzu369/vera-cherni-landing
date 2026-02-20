# Vercel Deployment Guide

## Repository Status
✅ GitHub repository created: https://github.com/galzu369/vera-cherni-landing
⚠️ Push to GitHub needs to be completed manually (see GITHUB_SETUP.md)

## Deploy to Vercel

### Method 1: Via Vercel Dashboard (Recommended)

1. **Go to Vercel**
   - Visit: https://vercel.com
   - Sign up/Login (use "Continue with GitHub" for easiest setup)

2. **Import Repository**
   - Click "Add New Project"
   - Select "Import Git Repository"
   - Find and select `galzu369/vera-cherni-landing`
   - Click "Import"

3. **Configure Project**
   - **Framework Preset**: Other (or leave as auto-detected)
   - **Root Directory**: `./` (default)
   - **Build Command**: Leave empty (static site, no build needed)
   - **Output Directory**: Leave empty
   - **Install Command**: Leave empty

4. **Deploy**
   - Click "Deploy"
   - Wait for deployment (usually 30-60 seconds)
   - Your site will be live at: `https://vera-cherni-landing.vercel.app`
   - You can add a custom domain later in project settings

### Method 2: Via Vercel CLI

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   cd "c:\Users\HP\Desktop\Vera Cherni Catalao"
   vercel
   ```
   - Follow the prompts
   - Select "Link to existing project" or "Create new project"
   - Deploy!

4. **Production Deploy**
   ```bash
   vercel --prod
   ```

## Post-Deployment

1. **Update Formspree URL**
   - Edit `index.html`
   - Replace `YOUR_FORM_ID` in the contact form action with your actual Formspree endpoint
   - Commit and push (Vercel will auto-deploy)

2. **Custom Domain (Optional)**
   - Go to Project Settings → Domains
   - Add your custom domain (e.g., `veracherni.com`)
   - Follow DNS configuration instructions

3. **Environment Variables (if needed)**
   - Project Settings → Environment Variables
   - Add any API keys or secrets

## Notes

- Vercel auto-detects this as a static site
- No build configuration needed (using CDN assets)
- Automatic deployments on every push to `main` branch
- Free SSL certificate included
- Global CDN for fast loading worldwide

## Troubleshooting

- **Build fails**: Check that `index.html` is in the root directory
- **Images not loading**: Verify `assets/` folder is included in the repository
- **Form not working**: Update Formspree endpoint URL in `index.html`
