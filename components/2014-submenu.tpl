{% for i in site.menuitems_with_hidden %}
<nav class="subnav{% if i.selected? %} active{% endif %}">
  <ol>{% for i2 in i.children %}
    <li{% if i2.selected? %} class="active"{% endif %}><a href="{{i2.url}}">{{i2.title}}</a></li>{% endfor %}{% if editmode %}
    <li>{% menuadd parent="i" %}</li>
    {% endif %}
  </ol>
</nav>
{% endfor %}