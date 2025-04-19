#!/bin/bash

# ------------------------------------------
# Basic HTML validation script for CI check
# Checks if each HTML file contains required tags
# ------------------------------------------

echo "🔍 Running basic HTML checks..."

# Find all HTML files under the 'site' directory
files=$(find ./site -name "*.html")

# Initialize exit code to 0 (success)
exit_code=0

# Loop through each HTML file and check for key tags
for file in $files; do
  echo "Checking $file..."

  # Check for <!DOCTYPE html>
  if ! grep -q "<!DOCTYPE html>" "$file"; then
    echo "$file is missing <!DOCTYPE html>"
    exit_code=1
  fi

  # Check for <html> tag (case-insensitive)
  if ! grep -qi "<html" "$file"; then
    echo "$file is missing <html> tag"
    exit_code=1
  fi

  # Check for <head> tag
  if ! grep -qi "<head" "$file"; then
    echo "$file is missing <head> tag"
    exit_code=1
  fi

  # Check for <body> tag
  if ! grep -qi "<body" "$file"; then
    echo "$file is missing <body> tag"
    exit_code=1
  fi
done

# Final result
if [ "$exit_code" -eq 0 ]; then
  echo "All HTML files passed basic checks!"
else
  echo "Some HTML files failed checks"
fi

# Exit with appropriate code so GitHub Actions knows success/failure
exit $exit_code
