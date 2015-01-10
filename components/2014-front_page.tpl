<!doctype html>
<html lang="{{page.language_code}}">
<head>
  {% include "2014-SiteHeader" %}
</head>
<body class="frontpage">
<div class="header-wrapper"><header>
  <a href="{{site.root_item.url}}" class="logo">{{site.name}}</a>
  {% include "2014-Mainmenu" %}
  <a href="http://fb.me/thismixtape" class="facebook" target="_blank">facebook.com/ThisMixtape</a>
</header></div>
<div class="no-bounce"><div><div>
  <div class="wrapper">
  {% include "2014-Submenu" %}
    <section class="main-content">
      <div class="content">
        {% content %}
      </div>
    </section>
  </div>
</div></div></div>
{% include "2014-JS" %}
<script>
$(function() {
  if(!navigator.userAgent.match(/iPhone/) && !navigator.userAgent.match(/iPod/)) {
    $(document.body).prepend('<video autoplay="true" loop="true"><source src="http://cdn.thismixtape.com/video/tmisvideo.webm" media="screen and (min-width:600px)" type="video/webm" /><source src="http://cdn.thismixtape.com/video/tmisvideo.mp4" media="screen and (min-width:600px)" type="video/mp4" /></video>');
  }
});
</script>
</body>
</html>