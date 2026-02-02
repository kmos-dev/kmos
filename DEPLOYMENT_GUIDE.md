# KMOS Landing Page - MIME Type Error Fix Guide

## Problem Summary
When loading JavaScript modules from `http://kmos.in/kmos/assets/index-*.js`, the browser blocks the request with error:
```
Loading module from was blocked because of a disallowed MIME type (text/html)
```

This indicates the server is serving JavaScript files with `text/html` content-type instead of `application/javascript`.

## Root Cause Analysis

### Common Causes:
1. **File Not Found** - JavaScript file doesn't exist, server returns index.html with text/html
2. **Rewrite Rules** - Server redirect rules are incorrectly routing .js requests to HTML pages
3. **Base Path Mismatch** - vite.config.js base path doesn't match actual deployment path
4. **Custom Domain Configuration** - Domain provider's redirect rules are interfering
5. **Caching** - Old configurations are being cached by the server or browser

## Immediate Solutions

### Solution 1: Verify Build Output
First, check that JavaScript files are actually being generated:

```bash
# Build the project
npm run build

# Check if assets directory exists with JS files
ls -la dist/assets/
```

Expected output should show files like:
- `index-*.js` (main JavaScript bundle)
- `index-*.css` (styles)

### Solution 2: Check Browser Network Tab
1. Open Developer Tools (F12) → Network tab
2. Refresh the page
3. Look for the JavaScript file request
4. Check the "Response Headers" for:
   - `Content-Type: application/javascript` ✓
   - `Content-Type: text/html` ✗ (this is the problem)
5. Note the HTTP status code:
   - 200: File found but wrong type
   - 404: File not found
   - 301/302: Redirected

### Solution 3: Test URL Accessibility
Directly test if JavaScript files are accessible:

```bash
# Test with curl (check headers)
curl -I http://kmos.in/kmos/assets/index-BNFjHO7f.js

# Expected good response:
# HTTP/2 200
# content-type: application/javascript

# Bad response (problem):
# HTTP/2 200
# content-type: text/html
```

## Deployment-Specific Fixes

### GitHub Pages with Custom Domain

#### If using GitHub Pages with custom domain (kmos.in):

1. **Verify Custom Domain Settings**:
   - Go to: GitHub Repository → Settings → Pages
   - Ensure custom domain is correctly configured
   - Check "Enforce HTTPS" is enabled

2. **Check DNS Configuration**:
   - Ensure A records or CNAME are pointing to GitHub Pages
   - For A records: Point to GitHub's IP addresses (185.199.108.153, etc.)
   - For CNAME: Point to your-username.github.io

3. **Add .htaccess to Repository**:
   - The `.htaccess` file in this repository will be deployed with GitHub Pages
   - It explicitly sets JavaScript MIME types and SPA fallback rules

### Apache Server Configuration

If hosting on Apache server:

1. **Create/Edit .htaccess**:
   ```apache
   # Ensure these directives are present:
   AddType application/javascript .js
   AddType text/javascript .js
   
   <FilesMatch "\.(js|mjs)$">
       Header set Content-Type "application/javascript"
   </FilesMatch>
   ```

2. **Enable mod_headers and mod_rewrite**:
   ```bash
   a2enmod headers
   a2enmod rewrite
   systemctl restart apache2
   ```

3. **Verify AllowOverride**:
   ```apache
   # In your virtual host config:
   <Directory /var/www/html>
       AllowOverride All
   </Directory>
   ```

### Nginx Server Configuration

If hosting on Nginx server:

1. **Add MIME types to nginx.conf**:
   ```nginx
   http {
       types {
           application/javascript js mjs;
       }
       
       server {
           # ... server config
           
           location ~* \.(js|mjs)$ {
               add_header Content-Type application/javascript;
           }
       }
   }
   ```

2. **Test and reload**:
   ```bash
   nginx -t
   systemctl reload nginx
   ```

## Step-by-Step Fix Procedure

### Step 1: Verify Build Configuration
Check [`vite.config.ts`](vite.config.ts:6) has correct base path:
```typescript
export default defineConfig({
  base: '/kmos/',  // Must match your deployment URL
  // ...
});
```

### Step 2: Clear All Caches
```bash
# Clear npm cache
npm cache clean --force

# Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)

# If using CDN, purge CDN cache
```

### Step 3: Redeploy with Fixed Configuration
```bash
# Rebuild
npm run build

# Commit and push
git add .
git commit -m "Fix MIME type configuration"
git push origin main

# Wait 1-2 minutes for GitHub Pages to update
```

### Step 4: Verify the Fix
```bash
# Test JavaScript file headers
curl -I https://kmos.in/kmos/assets/index-BNFjHO7f.js

# Should return:
# HTTP/2 200
# content-type: application/javascript
```

## Troubleshooting Checklist

- [ ] JavaScript files exist in `dist/assets/`
- [ ] Base path in vite.config.ts matches deployment URL
- [ ] Server configuration has correct MIME types
- [ ] No redirect rules are routing .js to .html
- [ ] Browser cache is cleared
- [ ] CDN cache is purged (if using CDN)
- [ ] HTTPS is enforced and working

## Alternative Solutions

### If using Cloudflare:
1. Disable "Auto Minify" for JavaScript
2. Check "Rocket Loader" isn't interfering
3. Purge cache in Cloudflare dashboard

### If using other CDN:
1. Verify CDN isn't transforming responses
2. Check CDN MIME type settings
3. Purge CDN cache after deployment

## Emergency Workaround

If immediate fix is needed, add this to your HTML before the problematic script:
```html
<script>
  // Force correct MIME type check
  const originalCreateElement = document.createElement;
  document.createElement = function(tagName) {
    const element = originalCreateElement.apply(this, arguments);
    if (tagName === 'script') {
      element.type = 'application/javascript';
    }
    return element;
  };
</script>
```

This is NOT a permanent solution - fix the server configuration instead.

## Files Created

- [`.htaccess`](.htaccess) - Apache server configuration with MIME types and SPA fallback
- [`nginx.conf`](nginx.conf) - Nginx server configuration for alternative hosting
- [`DEPLOYMENT_GUIDE.md`](DEPLOYMENT_GUIDE.md) - This troubleshooting guide

## Support

If issue persists after trying all solutions:
1. Check GitHub Pages status: https://www.githubstatus.com/
2. Verify domain DNS propagation: https://dnschecker.org/
3. Contact hosting provider support
