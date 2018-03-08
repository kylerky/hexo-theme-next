{% if theme.hljs.enable %}
  {% if not theme.hljs.per_page or (page.total or page.hljs) %}
    <script type="text/javascript" src="{{ url_for(theme.js) }}/src/highlight.pack.js"></script>
    <script type="text/javascript">
      hljs.configure({
          tabReplace: {% if theme.hljs.tabReplace %} {{ theme.hljs.tabReplace }} {% else %} '    ' {% endif %}
      });
      $(document).ready(function() {
        $('pre code').each(function(i, block) {
          hljs.highlightBlock(block);
        });
      });
    </script>
  {% endif %}
{% endif %}
