#!/bin/bash

# check WP installation
echo -e "checking WP files..."
ls -la /var/www/html
touch /var/www/html/buildinfo.json
