---
title: About Us
permalink: "/about/"
layout: page
---

<div class="column-wrapper">
  <div class="two-column-left" style="height:200px;">
{{ "**Regular Services**, *Sundays @ 10:30 AM*" | markdownify }}

<address>
{{ site.address[0] }}<br>{{ site.address[1] }}
</address>
<a href="tel:{{ site.phone }}">{{ site.phone }}</a>
  </div>

  <div class="two-column-right" style="height:200px;">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3097.136293470441!2d-84.48894004944871!3d39.08059314363015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841b10ebdea33bb%3A0x773794b0842be20f!2s115+Main+St%2C+Newport%2C+KY+41071!5e0!3m2!1sen!2sus!4v1484157493692" frameborder="0" style="border:0; width:100%; height:100%;" allowfullscreen></iframe>
  </div>
</div>

<script>
function myMap() {
  var myCenter = new google.maps.LatLng(39.080589,-84.486746);
  var mapCanvas = document.getElementById("map");
  var mapOptions = {
    center: myCenter,
    zoom: 14,
    mapTypeControlOptions: {
      position: google.maps.ControlPosition.TOP_RIGHT
    }
  };
  var map = new google.maps.Map(mapCanvas, mapOptions);
  var marker = new google.maps.Marker({position:myCenter});
  marker.setMap(map);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>

This tells a bit about us.

<iframe style="width:100%; height:33vw;" src="https://www.youtube.com/embed/IthTJT3dGhw?rel=0" frameborder="0" allowfullscreen></iframe><br>

Here's more about [what we believe]({{ site.baseurl }}{% link what-we-believe.md %}).

## How to get involved

We’d love for you to be a part of the exciting changes here at Encounter Vineyard. If you see one of the pastors on Sunday, aggressively tap one on the shoulder and say, “Hey, I wanna help!” We want to talk with you about it.
