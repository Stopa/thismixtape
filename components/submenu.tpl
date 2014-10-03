{% for item in site.menuitems %}{% if item.selected? %}{% if editmode %}
    <div class="submenu left">
      <ul id="sub">{% for l2 in item.all_children %}
        <li{% if l2.selected? %} class="active"{% endif %}{% unless l2.translated? %} class="untranslated"{% endunless %}><a href="{{l2.url}}"{% unless l2.translated? %} class="fci-editor-menuadd"{% endunless %}>{{l2.title}}</a></li>{% endfor %}
	<li>{% menuadd parent="item" %}</li>
      </ul>
    </div>
    {% else %}{% if item.children? %}
    <div class="submenu left">
      <ul id="sub">{% for l2 in item.all_children %}
        <li{% if l2.selected? %} class="active"{% endif %}><a href="{{l2.url}}">{{l2.title}}</a></li>{% endfor %}
      </ul>
    </div>
    {% endif %}{% endif %}{% endif %}{% endfor %}