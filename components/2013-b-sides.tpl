<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
{% include "SiteHeader" %}
</head>

<body class="bsides">

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
    <div class="content left" style="background: url('../images/bsides.png?1') no-repeat left top;">
      {% content %}

<script type="text/javascript">
document.write("<iframe src=\"http:\/\/www.facebook.com\/plugins\/like.php?href="+document.URL+"&layout=button_count&show_faces=false&width=80&action=like&font=verdana&colorscheme=light\" scrolling=\"no\" frameborder=\"0\" style=\"border:none; overflow:hidden; width:80px; height:22px\" allowTransparency=\"true\"><\/iframe>");
</script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="fb-comments" data-href="{{site.url}}/{{page.path}}" data-num-posts="10" data-width="550"></div>

<br>
<br>

  </div>
    </div>
    <!-- /.content -->
  <!-- /#wrap.clearfix -->

<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.js"></script>
{% unless editmode %}{{site.analytics}}{% endunless %}
</body>
</html>
