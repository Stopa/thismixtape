      <ul id="main">
        <li{% if site.root_item.selected? %} class="active"{% endif %}><a href="{{site.root_item.url}}">{{site.root_item.title}}</a></li>{% for item in site.all_menuitems %}
        <li{% if item.selected? %} class="active"{% endif %}{% unless item.translated? %} class="untranslated"{% endunless %}><a href="{% if item.children? %}{{item.children.first.url}}{% else %}{{item.url}}{% endif %}"{% unless item.translated? %} class="fci-editor-menuadd"{% endunless %}>{{item.title}}</a></li>{% endfor %}{% if editmode %}
	<li>{% menuadd %}</li>{% endif %}
      </ul>