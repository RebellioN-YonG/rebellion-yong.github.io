# 博客写作与发布教程

本博客使用 Jekyll 的 Chirpy 主题。你只需要编辑 Markdown 和图片，发布脚本会处理 Git 操作。

## 1. 新建文章

文章必须放在仓库根目录的 `_posts/`（注意前后都有下划线），不能放在 `posts/`、`docs/` 或其他目录。

文件名必须是：

```text
YYYY-MM-DD-英文或数字标题.md
```

例如：`2026-09-15-my-note.md`。日期是文章发布日期；文件扩展名只能是 `.md` 或 `.markdown`。

文件开头必须有一段 front matter，并且使用两行 `---` 包住：

```yaml
---
title: 我的文章标题
date: 2026-09-15 20:00:00 +0800
categories: [学习]
tags: [jekyll, markdown]
---
```

说明：

- `title` 必填，冒号后要有空格；包含冒号时请用引号包起来。
- `date` 建议写完整时间和时区 `+0800`。
- `categories` 可写 1 到 2 个分类；`tags` 可写多个，建议使用小写英文或简短中文。
- 第二个 `---` 后空一行，再开始写正文。不要把正文写进 front matter。

完整示例：

```markdown
---
title: 我的第一篇文章
date: 2026-09-15 20:00:00 +0800
categories: [随笔]
tags: [生活]
---

这里开始写正文。

## 小标题

正文、代码块、表格都可以按标准 Markdown 编写。
```

## 2. 添加图片

把图片放在仓库根目录的 `assets/images/`，例如：

```text
assets/images/my-photo.png
```

文件名建议使用英文、数字和短横线，不要使用空格或特殊字符。文章中使用绝对站点路径：

```markdown
![图片说明](/assets/images/my-photo.png)
```

不要写本机路径（例如 `/Users/...`），也不要把图片放进 `_posts/`。建议使用 PNG、JPG 或 WebP，并在提交前压缩大图片。

## 3. 检查与发布

在仓库根目录运行：

```bash
bash publish.sh
```

脚本会检查当前目录是否为 Git 仓库；如果有改动，则执行 `git add`、生成提交、推送到 `main`。GitHub Actions 构建成功后，访问：

<https://rebellion-yong.github.io/>

文章列表超过 10 篇时，Chirpy 会自动生成分页，第二页地址形如 `/page/2/`。
