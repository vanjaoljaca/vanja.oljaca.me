---
layout: page
title: Posts
permalink: /posts/
---

<h3>Plan</h3>

Things I plan to do...

<h3>Recent</h3>


{% for post in site.posts %}
  - [{{ post.title }}]({{ post.url }})
  {{ post.excerpt }}
{% endfor %}
