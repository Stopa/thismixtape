{% for i in site.menuitems_with_hidden %}
<nav class="subnav{% if i.selected? %} active{% endif %}">
  <ol>
    {% elementscontext edicy_page_path_var="i.path" %}
    {% for e in elements %}
    <li{% if e.id == element.id %} class="active"{% endif %}><a href="{{ e.url }}">{{ e.title }}</a></li>{% endfor %}
    {% endelementscontext %}
    {% for level2 in i.children %}
    <li{% if level2.selected? %} class="active"{% endif %}><a href="{{ level2.url }}">{{ level2.title }}</a></li>
    {% endfor %}
    {% if editmode %}
    <li><a href="{{ i.url }}?new">Lisa mixtape</a></li>
    <li>{% menuadd parent="i" %}</li>
    {% endif %}
  </ol>
</nav>
{% endfor %}