{% comment %}
Because how markdown is rendered with liquid, the following table has to be
on one line. To edit, wrap the code in a couple of new-line characters, make
the edits, then remove the new-line characters.
{% endcomment %}

  Series | Title | Speaker | Date
:--------|:------|:--------|:-----
{% assign series = include.messages.first.series %}{% assign title_cell = "" %}{% assign speaker_cell = "" %}{% assign date_cell = "" %}{% for message in include.messages %}{% if message.series != series %}{% if series %}**{{ series }}**{% endif %} | {{ title_cell }} | {{ speaker_cell}} | {{ date_cell }}{% assign series = message.series %}{% assign title_cell = "" %}{% assign speaker_cell = "" %}{% assign date_cell = "" %}{% endif %}{% capture title_cell %}{{ title_cell }}• [{{ message.title }}]({{ message.url }})<br>{% endcapture %}{% assign speaker_cell = speaker_cell | append: site.data.authors[message.author].name | append: "<br>" %}{% assign message_date = message.date | date_to_string %}{% assign date_cell = date_cell | append: message_date | append: "<br>" %}{% endfor %}{% assign messages_size = include.messages | size %}{% if messages_size == 1 %}{% if series %}**{{ series }}**{% endif %} | {{ title_cell }} | {{ speaker_cell}} | {{ date_cell }}{% else %}
{% if series %}**{{ series }}**{% endif %} | {{ title_cell }} | {{ speaker_cell}} | {{ date_cell }}
{% endif %}
