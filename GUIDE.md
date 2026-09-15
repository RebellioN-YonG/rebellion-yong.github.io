# 博客写作与发布教程

## 添加 Markdown 文章

在 `_posts/` 新建 `YYYY-MM-DD-标题.md`，文件开头写：

```yaml
---
title: 文章标题
---
```

然后直接写正文。

## 添加图片

将图片放进 `assets/images/`，Markdown 中使用：

```markdown
![说明]({{ '/assets/images/demo.png' | relative_url }})
```

## 发布

在仓库根目录运行 `bash publish.sh`。脚本会检查改动、执行 `git add`、`git commit`、`git push origin main`。Actions 完成后访问 https://rebellion-yong.github.io/ 。
