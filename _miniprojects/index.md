---
layout: page
title: Mini Projects
permalink: /miniprojects/
---

- [deckard bot](./deckard-bot)
- [LLM Blog Concept](./llm-blog-concept)
- [Link text]({{ site.baseurl }}{% link _miniprojects/llm-blog-concept.md %})


<h1>{{ page.title }}</h1>

<ul>
  {% for post in site.miniprojects %}
    <li>
      <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>