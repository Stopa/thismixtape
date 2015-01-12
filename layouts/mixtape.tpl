<!doctype html>
<html lang="{{page.language_code}}">
<head>
  <meta name="keywords" content="{{ page.keywords }}" />
  <meta name="description" content="{{ page.description }}" />
  <meta name="author" content="{{ site.author }}" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta property="fb:admins" content="634481766"/>
  <meta property="og:site_name" content="This Mixtape is so..." />
  <meta propetry="og:url" content="{{site.url}}{{page.url}}" />
  <meta property="og:title" content="This Mixtape Is So {{ element.title }} {{ page.title }}" />
  {% unless editmode %}{% capture ogurl %}{% content name="og" %}{% endcapture %}
  <meta property="og:image" content="{{ element.opengraph_image }}" />{% endunless %}
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="mobile-web-app-capable" content="yes">
  <meta name="viewport" content="minimal-ui; width=device-width; user-scalable=no; initial-scale=1">
  <meta name="apple-mobile-web-app-title" content="This Mixtape">
  <link rel="icon" href="/favicon.ico" type="image/x-icon" />
  <link rel="shortcut icon" sizes="196x196" href="/images/icon196.png">
  <link rel="shortcut icon" sizes="128x128" href="/images/icon128.png">
  <link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
  <link rel="apple-touch-icon" href="/images/icon57.png" sizes="57x57">
  <link rel="apple-touch-icon" href="/images/icon72.png" sizes="72x72">
  <link rel="apple-touch-icon" href="/images/icon76.png" sizes="76x76">
  <link rel="apple-touch-icon" href="/images/icon114.png" sizes="114x114">
  <link rel="apple-touch-icon" href="/images/icon120.png" sizes="120x120">
  <link rel="apple-touch-icon" href="/images/icon144.png" sizes="144x144">
  <link rel="apple-touch-icon" href="/images/icon152.png" sizes="152x152">
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,500&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
  {% stylesheet_link "thismixtape.css?1" %}
  <title>This Mixtape Is So {{ element.title }} {{ page.title }}</title>
  <script>
  <!--
  pic1= new Image(220,220); 
  pic1.src="/assets/play-white.svg"; 
  pic2 = new Image(116,116);
  pic2.src="/assets/play-red.svg";
  pic3 = new Image(116,116);
  pic3.src="/assets/pause-white.svg";
  pic4 = new Image(131, 89);
  pic4.src="/images/fbh.png?1";
  pic5 = new Image(116,116);
  pic5.src="/assets/circle-red.svg";
  //-->
  </script>
</head>
<body>
<div class="header-wrapper"><header>
  <a href="{{site.root_item.url}}" class="logo">{{site.name}}</a>
  {% include "2014-Mainmenu" %}
  <a href="http://fb.me/thismixtape" class="facebook" target="_blank">facebook.com/ThisMixtape</a>
</header></div>
<div class="no-bounce"><div><div>
  <div class="wrapper">
    {% include "2014-submenu" %}
    <section class="main-content" style='background-image: url("{{ element.background_image }}")'>
      <div class="shadow"></div>
      <div class="content">
        <div id="player" class="ui360"><a href="http://cdn.thismixtape.com/{{ element.track_path }}"></a></div> 
      </div>
      <h1>{% editable element.title %} <i>{{ page.title }}</i></h1>
      <div class="content">

        {% editable element.body %}

        <section class="artist-links">{% if editmode %}<div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Soundcloud, FB jm lingid:{% endif %}
          {% editable element.artist_links %}{% if editmode %}</div>{% endif %}
        </section>
        {% if editmode %}
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Mixi aadress: cdn.thismixtape.com/{% editable element.track_path %}</div>
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Taustafoto: {% editable element.background_image %}</div>
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Facebooki pilt: {% editable element.opengraph_image %}</div>
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Peida mixtape: {% editable element.hidden %}
        {% else %}<a href="http://cdn.thismixtape.com/{{ element.track_path }}" class="download-track">Download</a>{% endif %}
      </div>
    </section>
  </div>
</div></div></div>
{% include "newsletter button" %}
{% include "2014-JS" %}
</body>
</html>