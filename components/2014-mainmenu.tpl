<nav class="main-nav">
  <ol>{% for i in site.menuitems %}
    <li class="nav-{{forloop.index}}{% if i.selected? %} active{% endif %}"><a href="{% elementscontext edicy_page_path_var="i.path" hidden="false" %}{% if elements.size == 0 %}{% if i.children? %}{{ i.children.first.url }}{% else %}{{ i.url }}{% endif %}{% else %}{{ elements.last.url }}{% endif %}{% endelementscontext %}">{{i.title}}</a></li>{% endfor %}
  </ol>
</nav>