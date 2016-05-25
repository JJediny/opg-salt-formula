% if 'services' in pillar %}
{%   for service_name in pillar['services'] %}
{%     if 'service' in pillar['services'][service_name] %}
{{ pillar['services'][service_name]['service'] }}
{%     endif %}
{%   endfor %}
{% endif %}