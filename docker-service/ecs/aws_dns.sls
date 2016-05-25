% if 'services' in pillar %}
{%   for service_name in pillar['services'] %}
{%     if 'dns' in pillar['services'][service_name] %}
{{ pillar['services'][service_name]['dns'] }}
{%     endif %}
{%   endfor %}
{% endif %}

#sample pillar
#
#dns record:
#  boto_route53.present:
#    - name:
#    - value:
#    - zone:
#    - record_type:
#    - ttl:
