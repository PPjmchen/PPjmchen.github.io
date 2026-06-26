#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

bundle exec jekyll build
sudo mkdir -p /var/www/jiaming-chen.com
sudo rsync -a --delete _site/ /var/www/jiaming-chen.com/
sudo nginx -t
sudo systemctl reload nginx
