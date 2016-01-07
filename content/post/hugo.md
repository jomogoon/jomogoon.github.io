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







