#!/bin/bash

echo -e "\033[0;32mDeploy change to http://jomogoon.github.io ...\033[0m"

# Build
hugo

# Add changes
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

cd public 
pwd

# Push source
git push origin master

cd ..
pwd

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Back to source
git push origin source


