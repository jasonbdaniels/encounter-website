---
title: Messages
layout: messages-year
permalink: /messages/
---

{% assign this_year = "now" | date: "%Y" %}
{% assign messages = "" | split: " " %}

{% for message in site.tags.message %}
  {% assign year = message.date | date: "%Y" %}
  {% if year == this_year %}
    {% assign messages = messages | push: message %}
  {% endif %}
{% endfor %}

{% include message-index-2.0.html messages=messages %}<br>
