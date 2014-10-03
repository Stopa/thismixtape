<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
{% include "SiteHeader" %}
<meta property="og:type" content="website" />
</head>

<body class="front">

  <!-- #wrap.clearfix -->
  <div id="wrap" class="clearfix">
    <!-- .left -->
    <div class="left-col left">
      <h1 id="logo"><a href="{{site.root_item.url}}">{{site.name}}</a></h1>
      <div class="slogan">{% xcontent name="slogan" %}</div>
      {% include "Mainmenu" %}
      <a href="http://www.facebook.com/thismixtape" target="_blank" id="fb-link">Kommenteeri Facebookis</a>
    </div>
    <!-- /.left -->
    <!-- .submenu -->
    {% include "Submenu" %}
    <!-- /.submenu -->
    <!-- .content -->
    <div class="content left">
      {% content %}
    </div>
    <!-- /.content -->
  </div>
  <!-- /#wrap.clearfix -->
{% unless editmode %}{{site.analytics}}{% endunless %}  
</body>
</html>
