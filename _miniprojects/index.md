---
layout: page
title: Projects
permalink: /miniprojects/
excerpt: hey
---

<ol>
<style>
  ol {
    list-style-type: decimal;
    padding-left: 0;
  }

  ol > li {
    margin-bottom: 20px; /*Adjust space between items*/
  }

  ol > li > h3 {
    margin-bottom: 0.5em; /*Adjust space between title and excerpt*/
  }

  ol > li > h3 > a {
    /*Your styles for link text here */
    font-size: 1em; /* Adjust link text size if needed*/
  }

  ol > li > p {
    font-size: 0.9em; /*Smaller font size for non-link text */
    margin-top: 0.1em; /* Adjust space to bring closer to the link text*/
  }
</style>

  {% for post in site.miniprojects %}
    {% unless post.title == 'Projects' %}
    <li>
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p>
      {{ post.excerpt }}
      </p>
    </li>
    {% endunless %}
  {% endfor %}
</ol>
