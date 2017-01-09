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

  Series | Title | Speaker | Date
:--------|:------|:--------|:-----
{% assign series = site.tags.message.first.series %}{% assign title_cell = "" %}{% assign speaker_cell = "" %}{% assign date_cell = "" %}{% for message in site.tags.message %}{% assign year = message.date | date: "%Y" %}{% if year == this_year %}{% if message.series != series %}{% if series %}**{{ series }}**{% endif %} | {{ title_cell }} | {{ speaker_cell}} | {{ date_cell }}{% assign series = message.series %}{% assign title_cell = "" %}{% assign speaker_cell = "" %}{% assign date_cell = "" %}{% endif %}{% capture title_cell %}{{ title_cell }}• [{{ message.title }}]({{ message.url | relative_url }})<br>{% endcapture %}{% assign speaker_cell = speaker_cell | append: site.data.authors[message.author].name | append: "<br>" %}{% assign message_date = message.date | date_to_string %}{% assign date_cell = date_cell | append: message_date | append: "<br>" %}{% endif %}{% endfor %}
{% if series %}**{{ series }}**{% endif %} | {{ title_cell }} | {{ speaker_cell}} | {{ date_cell }}

<br>

[Message Archives]({{ site.baseurl }}{% link message-archives.md %})
