#!/bin/sh
#
# Publish to NPM if current tag isn't already released.

PACKAGE_NAME=$(node -e "process.stdout.write(require('./package.json').name)")
PACKAGE_VERSION=$(node -e "process.stdout.write(require('./package.json').version)")
EXISTING_PACKAGE=$(npm info "$PACKAGE_NAME" versions --json | jq --arg PACKAGE_VERSION "$PACKAGE_VERSION" 'index($PACKAGE_VERSION)')

if [ "$EXISTING_PACKAGE" = "null" ];
then
  npm publish
else
  echo "\nSkipping publish. $PACKAGE_NAME@$PACKAGE_VERSION already exists\n"
fi
