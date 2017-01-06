---
layout: page
permalink: /messages/archive/
---

{% comment %}Construct Archive {% endcomment %}

{% assign archives = "" | split: " " %}
{% for message in site.tags.message %}
  {% assign year = message.date | date: "%Y" %}
  {% assign mut_archives = "" | split: " " %}
  {% assign found_index = -1 %}

{% comment %}Search for an existing year{% endcomment %}
  {% for archive in archives %}
    {% if archive[0] == year %}
      {% assign found_index = forloop.index0 %}
      {% break %}
    {% endif %}
    {% assign mut_archives = mut_archives | push: archive %}
  {% endfor %}

  {% assign archive = archives[found_index] %}
  {% assign archive_size = archive | size %}

  {% if found_index == -1  %}
    {% assign messages = "" | split: " " | push: message %}
    {% assign archive = "" | split: " " | push: year | push: messages %}
    {% assign archives = archives | push: archive %}
  {% else %}
    {% assign archive = archives[found_index] %}
    {% assign messages = archive[1] | push: message %}
    {% assign archive = "" | split: " " | push: year | push: messages %}
    {% assign mut_archives = mut_archives | push: archive %}
    {% assign found_index = found_index | plus: 1  %}

{% comment %}Add the rest of the archives back into the master archive.{% endcomment %}
    {% for end_archive in archives offset: found_index %}
      {% assign mut_archives = mut_archives | push: end_archive %}
    {% endfor %}
    {% assign archives = mut_archives %}
  {% endif %}
{% endfor %}

## Archives

{% for archive in archives %}
### {{ archive[0] }}
{% assign messages = archive[1] %}
{% include message-table.md messages=messages %}
{% endfor %}
