#!/bin/bash
# Build script for multilingual Hypernyx site
# Builds both English and Persian versions simultaneously

echo "Building Hypernyx multilingual site..."
echo "========================================"

# Clear previous build
rm -rf _site

# Build with main config (includes both language directories)
bundle install
bundle exec jekyll build

echo ""
echo "========================================"
echo "Build completed successfully!"
echo ""
echo "Generated directories:"
echo "  - _site/en/  (English)"
echo "  - _site/fa/  (Persian)"
echo "========================================"
