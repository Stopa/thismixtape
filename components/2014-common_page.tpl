<!doctype html>
<html lang="{{page.language_code}}">
<head>
  {% include "2014-SiteHeader" %}
</head>
<body>
<div class="header-wrapper"><header>
  <a href="{{site.root_item.url}}" class="logo">{{site.name}}</a>
  {% include "2014-Mainmenu" %}
  <a href="http://fb.me/thismixtape" class="facebook" target="_blank">facebook.com/ThisMixtape</a>
</header></div>
<div class="no-bounce"><div><div>
{% capture photourl %}{% content name="photo" %}{% endcapture %}{% capture trackurl %}{% content name="player" %}{% endcapture %}
  <div class="wrapper">
    {% include "2014-Submenu" %}
    <section class="main-content"{% unless editmode %} style='background-image: url("http://thismixtape.com/photos/{{ photourl | strip_newlines | replace:" ","" }}")'{% endunless %}>
      <div class="shadow"></div>
      <div class="content">
        {% unless editmode %}
          <div id="player" class="ui360"><a href="http://cdn.thismixtape.com/{{ trackurl | strip_newlines | replace:" ","" }}"></a></div> 
        {% endunless %}
        {% content %}
        <section class="artist-links">{% if editmode %}<div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Soundcloud, FB jm lingid:{% endif %}
          {% content name="artist-links" %}{% if editmode %}</div>{% endif %}
        </section>
        {% if editmode %}
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Mixi aadress: cdn.thismixtape.com/{% content name="player" %}</div>
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Foto aadress: /photos/{% content name="photo" %}</div>
          <div style="border: 1px solid white; padding: 5px; margin: 5px 0;">Facebooki pilt: /photos/{% content name="og" %}</div>
        {% else %}<a href="http://cdn.thismixtape.com/{{ trackurl | strip_newlines | replace:" ","" }}" class="download-track">Download</a>{% endif %}
      </div>
    </section>
  </div>
</div></div></div>
{% include "newsletter button" %}
{% include "2014-JS" %}
</body>
</html>