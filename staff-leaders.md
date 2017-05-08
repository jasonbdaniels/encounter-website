---
title: Staff and Leaders
permalink: "/staffleaders"
layout: page
image: "/images/cliff-speaking.png"
---

<div style="width:33vw;">
{% assign image_link = page.image | relative_url %}
{{ "![Cliff speaking](" | append: image_link | append: ")" | markdownify }}
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
