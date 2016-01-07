+++
author = "jomogoon"
Categories = []
Description = ""
Tags = ["hugo", "blog"]
date = "2016-01-07T22:24:46+09:00"
title = "Hugo"

+++

**Hugo**

올해 목표중의 하나인　기록(Log)하기 위해 블로그 개설  
요즘 유행하는 Static Site 생성툴인 Hugo로 스타트
아래는 그 메모  

휴고 설치
```
brew install hugo

hugo new site new/site/path 

```

깃헙에 리포지토리 준비/등록
```
[user id].github.io
 
cd new/site/path 

git init
git add remote add origin git remote add origin git@github.com:<github_username>/<github_username>.github.io.git 

```

새 페이지 생성
```
hugo new post/hello.md

# edit contents
vi contents/post/hello.md
#:wq!

#theme
git clone https://github.com/theme-auther/name.git theme/name

echo 'public' >> .gitignore

```


로컬에서 확인 - http://localhost:1313/  
```
hugo

hugo server -w
```

커밋은 new/site/path/public 에 생성된 내용은 master 에, new/site/path 는 source 브런치에 커밋  
스크립트를 만들어 두면 편리
```
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
```





