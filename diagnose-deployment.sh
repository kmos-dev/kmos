#!/bin/bash
# KMOS Deployment Diagnostic Script
# Run this to diagnose deployment issues

set -e

echo "=========================================="
echo "KMOS Deployment Diagnostic"
echo "=========================================="
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

DOMAIN="kmos.in"
BASE_URL="http://$DOMAIN"
ASSETS_PATH="/kmos/assets"

# Function to check result
check() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✓${NC} $2"
    else
        echo -e "${RED}✗${NC} $2"
    fi
}

echo "1. Checking local build output..."
echo "   Checking dist folder..."
if [ -d "dist" ]; then
    check 0 "dist folder exists"
    
    if [ -f "dist/index.html" ]; then
        check 0 "dist/index.html exists"
    else
        check 1 "dist/index.html missing"
    fi
    
    if [ -f "dist/.htaccess" ]; then
        check 0 "dist/.htaccess exists"
    else
        check 1 "dist/.htaccess missing"
    fi
    
    echo ""
    echo "   Assets folder contents:"
    ls -la dist/assets/ 2>/dev/null || echo "   No assets folder"
else
    check 1 "dist folder missing - run 'npm run build' first"
fi

echo ""
echo "2. Testing GitHub Pages deployment..."
echo "   Testing: $BASE_URL$ASSETS_PATH/"

# Test if the base assets path is accessible
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL$ASSETS_PATH/" --max-time 10 2>/dev/null || echo "000")
echo "   HTTP Status: $RESPONSE"

if [ "$RESPONSE" = "200" ]; then
    check 0 "Assets directory accessible"
elif [ "$RESPONSE" = "404" ]; then
    check 1 "Assets directory returns 404"
    echo "   This means the files are not deployed correctly."
    echo "   Check GitHub Actions workflow status."
elif [ "$RESPONSE" = "000" ]; then
    echo -e "${YELLOW}!${NC} Could not connect to server"
else
    echo "   Status: $RESPONSE"
fi

echo ""
echo "3. Testing specific asset files..."

# Test JavaScript file (look for actual hash in dist/assets)
JS_FILE=$(ls dist/assets/*.js 2>/dev/null | head -1 | xargs basename 2>/dev/null || echo "")
if [ -n "$JS_FILE" ]; then
    echo "   Testing: $BASE_URL$ASSETS_PATH/$JS_FILE"
    JS_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL$ASSETS_PATH/$JS_FILE" --max-time 10 2>/dev/null || echo "000")
    JS_TYPE=$(curl -s -I "$BASE_URL$ASSETS_PATH/$JS_FILE" --max-time 10 2>/dev/null | grep -i "content-type" | head -1 || echo "")
    
    echo "   HTTP Status: $JS_RESPONSE"
    echo "   $JS_TYPE"
    
    if [ "$JS_RESPONSE" = "200" ]; then
        check 0 "JavaScript file accessible"
        if echo "$JS_TYPE" | grep -q "application/javascript"; then
            check 0 "Correct MIME type (application/javascript)"
        else
            check 1 "Wrong MIME type - should be application/javascript"
        fi
    else
        check 1 "JavaScript file not accessible (404)"
    fi
else
    echo -e "${YELLOW}!${NC} No JavaScript files found in dist/assets/"
fi

echo ""
echo "4. Testing main page..."
echo "   Testing: $BASE_URL$ASSETS_PATH/../"
INDEX_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL$ASSETS_PATH/../" --max-time 10 2>/dev/null || echo "000")
INDEX_TYPE=$(curl -s -I "$BASE_URL$ASSETS_PATH/../" --max-time 10 2>/dev/null | grep -i "content-type" | head -1 || echo "")

echo "   HTTP Status: $INDEX_RESPONSE"
echo "   $INDEX_TYPE"

if [ "$INDEX_RESPONSE" = "200" ]; then
    check 0 "Main page accessible"
else
    check 1 "Main page not accessible"
fi

echo ""
echo "5. GitHub Actions Status Check"
echo "   Visit: https://github.com/kmos-dev/kmos/actions"
echo "   Verify that the latest workflow run completed successfully."

echo ""
echo "=========================================="
echo "Diagnostic Complete"
echo "=========================================="
echo ""
echo "If you see 404 errors:"
echo "1. Wait 2-3 minutes for GitHub Pages to rebuild"
echo "2. Check GitHub Actions for build errors"
echo "3. Verify 'Deployment source' is set to 'GitHub Actions'"
echo "4. Ensure custom domain 'kmos.in' is configured in Pages settings"
echo ""
