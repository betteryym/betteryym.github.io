---
layout: home
---

# yym的技术空间

尝试对世界了解更多，记录个人技术成长和思考。

## 最新文章

{% for post in site.posts limit:5 %}
### [{{ post.title }}]({{ post.url }})
{{ post.date | date: "%Y年%m月%d日" }}

{{ post.excerpt | strip_html | truncate: 200 }}

[阅读更多]({{ post.url }})

---
{% endfor %}

## 文章分类

{% assign categories = site.categories | sort %}
{% for category in categories %}
### {{ category | first }}
<ul>
  {% for post in category[1] %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> - {{ post.date | date: "%Y年%m月%d日" }}</li>
  {% endfor %}
</ul>
{% endfor %}

## 关于我

热爱技术，喜欢探索和分享。主要关注领域包括分布式系统、Java技术栈、缓存技术、架构设计等。

欢迎交流和指正！