#!/usr/bin/env bash

# Handy command to check all PHP files for syntax errors when upgrading PHP version on a server

# Store this folder in your project root
# run the bash script (tools/php-compatibility-check.sh)

# It will recursively check all PHP files from the root for syntax errors (deprecated functions, etc.)
find $(dirname "${BASH_SOURCE[0]}")/.. -name '*.php' | xargs -n1 /usr/bin/php -l
