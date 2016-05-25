% if 'services' in pillar %}
{%   for service_name in pillar['services'] %}
{%     if 'task' in pillar['services'][service_name] %}
{{ pillar['services'][service_name]['task'] }}
{%     endif %}
{%   endfor %}
{% endif %}