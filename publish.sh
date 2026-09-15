#!/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then echo "错误：当前目录不是 Git 仓库"; exit 1; fi
if [ -z "$(git status --porcelain)" ]; then echo "没有需要发布的改动。"; exit 0; fi
git add .
MESSAGE="${1:-发布新文章 $(date +%Y-%m-%d)}"
git commit -m "$MESSAGE"
git push origin main
echo "发布完成：https://rebellion-yong.github.io/"
