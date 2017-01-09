---
title: Messages
layout: messages-year
permalink: /messages/
---

{% comment %}
Because how markdown is rendered with liquid, the following table has to be
on one line. To edit, wrap the code in a couple of new-line characters, make
the edits, then remove the new-line characters.
{% endcomment %}

{% assign this_year = "now" | date: "%Y" %}
{% assign messages = "" | split: " " %}

{% for message in site.tags.message %}
  {% assign year = message.date | date: "%Y" %}
  {% if year == this_year %}
    {% assign messages = messages | push: message %}
  {% endif %}
{% endfor %}

{% include message-table.md messages=messages %}<br>

[Message Archives]({{ site.baseurl }}{% link message-archives.md %})
