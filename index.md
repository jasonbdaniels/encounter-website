---
title: Welcome
layout: home
images:
- http://www.encountervineyard.com/wp-content/uploads/2015/09/new_web_banner-940x400.jpg
- http://www.encountervineyard.com/wp-content/uploads/2015/09/bad_religion_web2.jpg
- http://www.encountervineyard.com/wp-content/uploads/2012/10/bridge_banner-940x400.jpg
nav: false
---

# Latest Messages

{% include searchfield.html %}

<br>

{% assign messages = "" | split: " " %}

{% for message in site.tags.message limit: 5 %}
  {% assign messages = messages | push: message %}
{% endfor %}

{% include message-index-2.0.html messages=messages %}<br>
