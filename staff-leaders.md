---
layout: page
title: Staff and Leaders
permalink: /staffleaders
image: /images/cliff-speaking.png
---

<div style="width:33vw;">
{{ "![Cliff speaking](" | append: page.image | append: ")" | markdownify }}
</div>

{% for author_hash in site.data.authors %}
{% assign author = author_hash[1] %}
{% if author.title %}
# {{ author.name }}

*{{ author.title }}*<br>
{% if author.email %}<a href="mailto:{{ author.email }}">{{ author.email }}</a>{% endif %}

{{ author.bio | markdownify }}
{% endif %}
{% endfor %}
