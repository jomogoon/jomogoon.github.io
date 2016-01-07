!/bin/bash

echo -e "\033[0;32mDeploy change to http://jomogoon.github.io ...\033[0m"

# Build
hugo

# Add changes
git add -A

# Create commit change
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Go to public
cd public
pwd

# Push output to mater branch (blog)
git push origin master


echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Get back to source
cd ..
pwd

git add -A
git commit -m "$msg"

# Push blog source to source branch
git push origin source
