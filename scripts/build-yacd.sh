#!/bin/bash
set -e

echo "==> 克隆 yacd 仓库..."
YACD_DIR="./yacd-src"

if [ -d "$YACD_DIR" ]; then
  echo "yacd 源码目录已存在，执行 git pull 更新..."
  cd "$YACD_DIR"
  git pull origin master
  cd ..
else
  git clone --depth 1 https://github.com/haishanh/yacd.git "$YACD_DIR"
fi

echo "==> 安装 yacd 依赖..."
cd "$YACD_DIR"
npm install -g pnpm
pnpm install --frozen-lockfile

echo "==> 构建 yacd 生产版本..."
pnpm build

echo "==> 复制构建产物到 Capacitor www 目录..."
cd ..
rm -rf www
cp -r "$YACD_DIR/public" www

echo "==> yacd 构建完成！产物已放入 www/ 目录"
