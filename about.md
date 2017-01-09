---
layout: page
title: About Us
permalink: /about/
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
    <div style="width:100%; height:100%;" id="map" ></div>
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
