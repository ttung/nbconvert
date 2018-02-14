{%- extends 'null.tpl' -%}

{%- block header -%}
#!/usr/bin/env python
# coding: utf-8
#
# EPY: stripped_notebook: {{ resources.strip_cells(nb) }}
{% endblock header %}

{% block input %}
{% set block_uuid = resources.encoded_python_uuid_generator() %}
# EPY: START CODE {{ block_uuid }}
{{ cell.source | ipython2python }}
# EPY: END CODE {{ block_uuid }}
{% endblock input %}

{% block markdowncell scoped %}
{% set block_uuid = resources.encoded_python_uuid_generator() %}
# EPY: START MARKDOWN {{ block_uuid }}
{{ cell.source | comment_lines }}
# EPY: END MARKDOWN {{ block_uuid }}
{% endblock markdowncell %}
