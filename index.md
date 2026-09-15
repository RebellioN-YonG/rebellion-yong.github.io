---
layout: default
title: 首页
---

# {{ site.title }}

{{ site.description }}

## 文章

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url | relative_url }}) · {{ post.date | date: "%Y-%m-%d" }}
{% else %}
还没有文章。新建一个 `_posts/YYYY-MM-DD-title.md` 文件，就可以开始写作。
{% endfor %}
