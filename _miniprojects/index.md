---
layout: page
title: Mini Projects
permalink: /miniprojects/
excerpt: hey
---

<ul>
  {% for post in site.miniprojects %}

      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}

  {% endfor %}
</ul>
