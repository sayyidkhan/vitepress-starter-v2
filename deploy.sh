
   
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git config user.email "abc"
git config user.name "abc@example.com"

git config --global user.name "abc"
git config --global user.email 'abc@users.noreply.github.com'

git init
git config --global init.defaultBranch master
git commit -am 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:sayyidkhan/sayyidkhan.github.io.git master

# if you are deploying to https://sayyidkhan.github.io/vitepress-starter
git push -f git@github.com:sayyidkhan/vitepress-starter-v2.git master:gh-pages

cd -
