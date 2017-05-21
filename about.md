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

<iframe style="width:100%; height:33vw;" src="https://www.youtube.com/embed/IthTJT3dGhw?rel=0" frameborder="0" allowfullscreen></iframe><br>

## What's Most Important To Us

Jesus was clear that everything God was trying to tell us about life is based on the simple idea of loving God and loving others. Jesus replied,

> You must love the LORD your God with all your heart, all your soul, and all your mind. This is the first and greatest commandment. A second is equally important: Love your neighbor as yourself. The entire law and all the demands of the prophets are based on these two commandments.

We believe by investing in three relationship actions: **Up**, **In**, and **Out**, we can begin to find the fullness of life that God offers.

### Up

**Our first priority in life is to love God**. To expand on this, Jesus used an analogy of a vine and branch. He is the vine and we are the branches; and apart from him we can do nothing. Learning to remain connected to God is where we find strength, healing and purpose for our lives. We connect to God like we do with other relationships; spending time with him, talking to him, and listening to him. In practical terms we see this happening through worship, prayer, reading the bible, and doing what God says. At Encounter we use Sunday morning together to help us focus on God, while encouraging individual time during the week to continue that connection.

### In

**It's most important to love God but if we don't love other people at Encounter, we are only fooling ourselves about loving God.** It is equally important to care for others as much as we care for ourselves. Jesus raises that bar even higher by giving us a new command to love each other as he loves us. Practically we must spend time with people in environments where we can be known and we can know them, in order to develop healthy long term relationships. At Encounter we encourage everyone to become part of a small group that meets during the week where you can spend quality time together. Different groups focus on different activities but the common factor for each group is a place to care for others and for them to care about you.

### Out

**Learning to love our neighbor requires we learn to love people who are different from us.** It's natural to remain focused on the people who love us, because we love them. However, Jesus often pushed people to expand their understanding of what it means to love others; to love those we don't like -to even love our enemies. God desires to have a relationship with everyone. He wants us to be genuinely loving everyone. At Encounter we offer opportunities to serve our neighbors. You can do that by joining an Encounter Community or by helping at one of the monthly events we offer.

## How to get involved

We’d love for you to be a part of the exciting changes here at Encounter Vineyard. If you see one of the pastors on Sunday, aggressively tap one on the shoulder and say, “Hey, I wanna help!” We want to talk with you about it.

Here's more about [what we believe]({{ site.baseurl }}{% link what-we-believe.md %}).
