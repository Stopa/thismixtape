<nav class="main-nav">
  <ol>{% for i in site.menuitems %}
    <li class="nav-{{forloop.index}}{% if i.selected? %} active{% endif %}"><a href="{% if i.children?%}{{{i.children.first.url}}{% else %}{{i.url}}{% endif %}">{{i.title}}</a></li>{% endfor %}
  </ol>
</nav>