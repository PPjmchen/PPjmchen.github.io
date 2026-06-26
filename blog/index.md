---
layout: homepage
title: Blog
permalink: /blog/
blog_wide: true
---

## Blog

<ul class="post-list">
{% for post in site.posts %}
  <li>
    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
    {% if post.excerpt %}
    {{ post.excerpt }}
    {% endif %}
  </li>
{% endfor %}
</ul>
