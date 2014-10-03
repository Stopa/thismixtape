<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	{% stylesheet_link "faq.css?tmis" %}
{% stylesheet_link "360player.css?tmis" %}
{% stylesheet_link "360-custom.css?tmis" %}
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<title>{% if article %}{{ article.title }} | {{site.name}}{% else %}{{site.name}} {{ page.title }}{% endif %}</title>
<meta property="fb:admins" content="634481766"/>
<meta property="og:type" content="website" />
<meta property="og:site_name" content="This Mixtape is so..." />
<meta propetry="og:url" content="{{site.url}}{{page.url}}" />
<meta property="og:title" content="{{page.title}}" />
</head>

<body class="bsides">

  <!-- #wrap.clearfix -->
  <div id="wrap" class="clearfix">
    <!-- .content -->
    <div class="content left" style="background: url('../images/faq.png?1') no-repeat left top;">
      {% content %}

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
