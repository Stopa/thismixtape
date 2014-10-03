<!doctype html>
<html lang="{{page.language_code}}">
<head>
  {% include "2014-SiteHeader" %}
</head>
<body class="bsides">
<div class="header-wrapper"><header>
  <a href="{{site.root_item.url}}" class="logo">{{site.name}}</a>
  {% include "2014-Mainmenu" %}
  <a href="http://fb.me/thismixtape" class="facebook" target="_blank">facebook.com/ThisMixtape</a>
</header><div>
<div class="no-bounce"><div><div>
  <div class="wrapper">
    {% include "2014-Submenu" %}
    <section class="main-content">
      <div class="shadow"></div>
      <div class="content">
        {% content %}
      </div>
    </section>
  </div>
</div></div></div>
{% include "2014-JS" %}
</body>
</html>