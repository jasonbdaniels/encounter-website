---
title: Welcome
layout: home
images:
- http://www.encountervineyard.com/wp-content/uploads/2015/09/new_web_banner-940x400.jpg
- http://www.encountervineyard.com/wp-content/uploads/2015/09/scared-title-940x400.jpg
- http://www.encountervineyard.com/wp-content/uploads/2012/10/bridge_banner-940x400.jpg
nav: false
---

# Latest Messages

{% assign messages = "" | split: " " %}

{% for message in site.tags.message limit: 5 %}
  {% assign messages = messages | push: message %}
{% endfor %}

{% include message-index-2.0.html messages=messages %}<br>

<form action="{{ "/search.html" | absolute_url }}" method="get">
  <label for="search-box">Search</label>
  <input type="text" id="search-box" name="query">
  <input type="submit" value="search">
</form>
