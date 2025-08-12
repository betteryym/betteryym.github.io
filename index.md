---
layout: home
---

# yym的技术空间

尝试对世界了解更多，记录个人技术成长和思考。

## 最新文章

{% for post in paginator.posts %}
### [{{ post.title }}]({{ post.url }})
{{ post.date | date: "%Y年%m月%d日" }}

{{ post.excerpt | strip_html | truncate: 200 }}

[阅读更多]({{ post.url }})

---
{% endfor %}

<!-- 分页导航 -->
{% if paginator.total_pages > 1 %}
<div class="pagination">
  {% if paginator.previous_page %}
    {% if paginator.previous_page == 1 %}
      <a href="/" class="previous">← 上一页</a>
    {% else %}
      <a href="/page{{ paginator.previous_page }}/" class="previous">← 上一页</a>
    {% endif %}
  {% endif %}
  
  <span class="page_number">
    第 {{ paginator.page }} 页，共 {{ paginator.total_pages }} 页
  </span>
  
  {% if paginator.next_page %}
    <a href="/page{{ paginator.next_page }}/" class="next">下一页 →</a>
  {% endif %}
</div>

<!-- 页码导航 -->
<div class="page-numbers">
  {% for page_num in (1..paginator.total_pages) %}
    {% if page_num == paginator.page %}
      <span class="current-page">{{ page_num }}</span>
    {% else %}
      {% if page_num == 1 %}
        <a href="/" class="page-link">{{ page_num }}</a>
      {% else %}
        <a href="/page{{ page_num }}/" class="page-link">{{ page_num }}</a>
      {% endif %}
    {% endif %}
  {% endfor %}
</div>
{% endif %}

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