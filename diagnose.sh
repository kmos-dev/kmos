#!/bin/bash
# KMOS Deployment Diagnostic Script
# Run this script to diagnose MIME type issues

echo "=== KMOS Deployment Diagnostic ==="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check and print result
check_result() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✓${NC} $2"
    else
        echo -e "${RED}✗${NC} $2"
    fi
}

echo "1. Checking build configuration..."
if [ -f "vite.config.ts" ]; then
    echo "   vite.config.ts exists"
    if grep -q "base: '/kmos/'" vite.config.ts; then
        check_result 0 "Base path is set to '/kmos/'"
    else
        check_result 1 "Base path may not match deployment path"
    fi
else
    check_result 1 "vite.config.ts not found"
fi

echo ""
echo "2. Checking for server configuration files..."
if [ -f ".htaccess" ]; then
    check_result 0 ".htaccess file found"
else
    echo -e "${YELLOW}!${NC} .htaccess file not found (will be created)"
fi

if [ -f "nginx.conf" ]; then
    check_result 0 "nginx.conf file found"
else
    echo -e "${YELLOW}!${NC} nginx.conf file not found (will be created)"
fi

echo ""
echo "3. Checking package.json configuration..."
if grep -q '"type": "module"' package.json; then
    check_result 0 "Package type is 'module'"
else
    check_result 1 "Package type may not be 'module'"
fi

echo ""
echo "4. Testing JavaScript MIME type (if URL is accessible)..."
read -p "Enter your domain (e.g., kmos.in): " DOMAIN
if [ -n "$DOMAIN" ]; then
    echo "   Testing: http://$DOMAIN/kmos/assets/"
    RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "http://$DOMAIN" 2>/dev/null)
    if [ "$RESPONSE" = "200" ] || [ "$RESPONSE" = "301" ] || [ "$RESPONSE" = "302" ]; then
        check_result 0 "Domain is accessible (HTTP $RESPONSE)"
        
        # Try to check a JavaScript file
        JS_RESPONSE=$(curl -s -I "http://$DOMAIN/kmos/assets/" 2>/dev/null | grep -i "content-type" | head -1)
        if [ -n "$JS_RESPONSE" ]; then
            echo "   Response headers: $JS_RESPONSE"
            if echo "$JS_RESPONSE" | grep -q "application/javascript"; then
                check_result 0 "JavaScript MIME type is correct"
            else
                check_result 1 "JavaScript MIME type is incorrect"
            fi
        else
            echo -e "${YELLOW}!${NC} Could not check JavaScript headers"
        fi
    else
        check_result 1 "Domain may not be accessible (HTTP $RESPONSE)"
    fi
else
    echo -e "${YELLOW}!${NC} Skipping domain test"
fi

echo ""
echo "=== Diagnostic Complete ==="
echo ""
echo "Next steps:"
echo "1. If issues found, commit and push the new configuration files"
echo "2. Wait 1-2 minutes for GitHub Pages to rebuild"
echo "3. Test with: curl -I http://$DOMAIN/kmos/assets/"
echo ""
echo "For detailed troubleshooting, see DEPLOYMENT_GUIDE.md"
