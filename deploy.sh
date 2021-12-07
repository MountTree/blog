#!/usr/bin/env sh
###
 # @Author: your name
 # @Date: 2021-12-07 13:41:17
 # @LastEditTime: 2021-12-07 14:20:32
 # @LastEditors: your name
 # @Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 # @FilePath: \blog-vitepress\blog\deploy.sh
###

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

# 进入生成的文件夹
cd .vitepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/MountTree/blog master:gh-pages

cd -
