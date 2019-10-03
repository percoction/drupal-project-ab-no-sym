#!/bin/bash

# Syncs web-accessible files to new docroot.
# Mostly copied from https://www.drupal.org/node/2767907

SYNC_FOLDERS="core libraries modules profiles themes"

for DIR in $SYNC_FOLDERS; do
  rsync -mr --include='*.'{js,css,svg,png,jpg,jpeg,ico} --include='*/' --exclude='*' current/$DIR/ html/$DIR/
done
