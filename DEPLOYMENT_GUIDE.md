# KMOS Landing Page - Deployment & MIME Type Fix Guide

## Problem Diagnosis

Based on the error logs, the issue is **404 Not Found** for JavaScript files:
```
GET http://kmos.in/kmos/assets/index-BNFjHO7f.js
Status: 404 Not Found
Content-Type: text/html; charset=utf-8
```

**Root Cause**: The JavaScript files with hashed names don't exist at the specified paths. This is because:
1. The build hasn't been deployed with the current configuration
2. The static adapter wasn't configured for proper GitHub Pages deployment
3. Files need to be rebuilt and redeployed

## Solution Applied

### Changes Made:

1. **Updated [`package.json`](package.json)**: Switched from `adapter-auto` to `adapter-static` for reliable static site generation

2. **Updated [`svelte.config.js`](svelte.config.js)**: Configured static adapter with proper GitHub Pages settings

3. **Created [`src/routes/+layout.js`](src/routes/+layout.js)**: Enabled prerendering for all pages

4. **Updated [`.htaccess`](.htaccess)**: Added explicit MIME type configuration and SPA fallback rules

5. **Added favicon**: Copied [`static/favicon.svg`](static/favicon.svg) and updated [`src/app.html`](src/app.html) to reference it

## Step-by-Step Fix

### Step 1: Install Dependencies
```bash
npm install
```

### Step 2: Build the Project
```bash
npm run build
```

### Step 3: Verify Build Output
```bash
# Check that assets are generated
ls -la dist/assets/

# You should see files like:
# - index-*.js (JavaScript bundles)
# - index-*.css (CSS bundles)
```

### Step 4: Commit and Push
```bash
git add -A
git commit -m "Fix MIME type and 404 errors: switch to adapter-static, add proper routing"
git push origin main
```

### Step 5: Wait for GitHub Pages Deployment
- Wait 1-2 minutes for GitHub Actions to build and deploy
- Check the deployment status in your repository's "Actions" tab

### Step 6: Verify the Fix
```bash
# Test JavaScript file accessibility
curl -I http://kmos.in/kmos/assets/

# Test specific JS file (use the actual filename from your build)
curl -I http://kmos.in/kmos/assets/index-*.js

# Expected response:
# HTTP/2 200
# content-type: application/javascript
```

## Important: Base Path Configuration

Your [`vite.config.ts`](vite.config.ts:6) has:
```typescript
base: '/kmos/',
```

This means:
- Assets are served from: `http://kmos.in/kmos/assets/`
- The `.htaccess` file is configured with `RewriteBase /kmos/`

**If your repository name is NOT "kmos"**, you need to:
1. Change `base: '/your-repo-name/'` in `vite.config.ts`
2. Update `RewriteBase /your-repo-name/` in `.htaccess`

## GitHub Pages Custom Domain Setup

Verify these settings in your GitHub repository:

1. **Repository Settings → Pages**:
   - Source: "Deploy from a branch"
   - Branch: "gh-pages" (or "main" with `/ (root)` folder)
   - Custom domain: `kmos.in`
   - ✅ Enforce HTTPS

2. **DNS Configuration**:
   - A records pointing to GitHub IPs: `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - OR CNAME record: `kmos.in → your-username.github.io`

## Troubleshooting

### If 404 Persists:

1. **Check GitHub Pages source**:
   ```bash
   # Verify the build folder structure
   cat .github/workflows/deploy.yml
   # Ensure path: 'dist' is correct
   ```

2. **Test locally**:
   ```bash
   npm run preview
   # Visit http://localhost:4173/kmos/
   # Check if assets load correctly
   ```

3. **Clear CDN/browser cache**:
   - Hard refresh: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
   - If using Cloudflare, purge cache

### If MIME Type Still Wrong:

1. **Check response headers**:
   ```bash
   curl -I http://kmos.in/kmos/assets/index-*.js
   ```

2. **Verify .htaccess is deployed**:
   - Check if `.htaccess` appears in your GitHub repository
   - GitHub Pages should serve it automatically

3. **Check GitHub Pages processing**:
   - Go to Repository Settings → Pages
   - Look for any warnings about configuration

## Files Modified/Created

| File | Purpose |
|------|---------|
| [`package.json`](package.json) | Switched to adapter-static |
| [`svelte.config.js`](svelte.config.js) | Configured static adapter |
| [`src/routes/+layout.js`](src/routes/+layout.js) | Enabled prerendering |
| [`.htaccess`](.htaccess) | MIME types & routing rules |
| [`nginx.conf`](nginx.conf) | Nginx alternative config |
| [`static/favicon.svg`](static/favicon.svg) | Favicon image |
| [`src/app.html`](src/app.html) | Added favicon link |
| [`DEPLOYMENT_GUIDE.md`](DEPLOYMENT_GUIDE.md) | This guide |

## Quick Verification Commands

```bash
# 1. Check build output exists
ls dist/assets/

# 2. Test deployment
curl -I http://kmos.in/kmos/

# 3. Test JavaScript file
curl -I http://kmos.in/kmos/assets/index-*.js

# 4. Check MIME type
curl -s -I http://kmos.in/kmos/assets/*.js | grep -i content-type
```

Expected results:
- `http://kmos.in/kmos/` → 200 OK, `text/html`
- `*.js` files → 200 OK, `application/javascript`
- `*.css` files → 200 OK, `text/css`
