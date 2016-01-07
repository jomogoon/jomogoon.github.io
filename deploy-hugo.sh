!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Build
hugo

# Create commit change
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# Push blog source to source branch
git add -A
git commit -m "$msg"
git push origin source


echo -e "\033[0;32mDeploy change to http://jomogoon.github.io ...\033[0m"

# Go to public
cd public
pwd

# Push output to mater branch (blog)
git add -A
git commit -m "$msg"
git push origin master

