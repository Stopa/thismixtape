<meta name="keywords" content="{{ page.keywords }}" />
<meta name="description" content="{{ page.description }}" />
<meta name="author" content="{{ site.author }}" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="fb:admins" content="634481766"/>
<meta property="og:site_name" content="This Mixtape is so..." />
<meta propetry="og:url" content="{{site.url}}{{page.url}}" />
<meta property="og:title" content="{% if site.root_item.current? %}This Mixtape Is So...{% else %}This Mixtape Is So {{page.title}} {% for i in site.menuitems %}{% if i.selected? %}{{i.title}}{% endif %}{% endfor %}{% endif %}" />
{% unless editmode %}{% capture ogurl %}{% content name="og" %}{% endcapture %}
<!--meta property="og:image" content="{{site.url}}/images/facebook.png" /-->
<meta property="og:image" content="{{site.url}}/photos/{{ogurl | strip_html | strip_newlines | replace:" ","" }}" />{% endunless %}
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
{% stylesheet_link "2014-style.css?tmis" %}
{% stylesheet_link "360player.css?tmis2" %}
{% stylesheet_link "360-custom.css?tmis" %}
{% stylesheet_link "grain.css?tmis" %}
{% stylesheet_link "spinner.css?tmis" %}
<link media="screen and (max-width: 600px)" rel="stylesheet" type="text/css" href="/stylesheets/2014-mobile.css" />
<title>{% if site.root_item.current? %}This Mixtape Is So...{% else %}This Mixtape Is So {{page.title}} {% for i in site.menuitems %}{% if i.selected? %}{{i.title}}{% endif %}{% endfor %}{% endif %}</title>
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