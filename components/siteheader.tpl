	<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	{% stylesheet_link "style.css?tmis" %}
{% stylesheet_link "360player.css?tmis" %}
{% stylesheet_link "360-custom.css?tmis" %}
<!--[if IE]><link rel="stylesheet" href="/stylesheets/ie.css" type="text/css" media="all" /><![endif]-->
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
{% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css?1" static_host="true" %}
        {% endif %}
<!--[if IE]><link rel="stylesheet" href="http://static.edicy.com/assets/ie.css" type="text/css" /><![endif]-->
<title>{% if article %}{{ article.title }} | {{site.name}}{% else %}{{site.name}} {{ page.title }}{% endif %}</title>
<script type="text/javascript">
<!--
pic1= new Image(220,220); 
pic1.src="/images/360-button-play-light.png"; 
pic2 = new Image(116,116);
pic2.src="/images/360-button-pause-light.png";
pic3 = new Image(116,116);
pic3.src="/images/360-button-pause.png";
pic4 = new Image(131, 89);
pic4.src="/images/fbh.png?1";
//-->
</script>
<meta property="fb:admins" content="634481766"/>
<meta property="og:site_name" content="This Mixtape is so..." />
<meta propetry="og:url" content="{{site.url}}{{page.url}}" />
<meta property="og:title" content="{{site.name}}{{page.title}}" />
<meta property="og:image" content="{{site.url}}/images/facebook.png" />