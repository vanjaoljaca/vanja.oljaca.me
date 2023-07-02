---
layout: page
title: Guides
permalink: /guides/
---

<h1>{{ page.title }}</h1>

Some days I wake up with an urge for capability. I want to be able to do something, embody the process and have seen how it is done. These are my small guides for achieving tasks (personal reference material.)

<ul>
  {% for post in site.guides %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>