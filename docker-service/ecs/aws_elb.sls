{% if 'services' in pillar %}
{%   for service_name in pillar['services'] %}
{%     if 'elb' in pillar['services'][service_name] %}
{{ pillar['services'][service_name]['elb'] }}
{%     endif %}
{%   endfor %}
{% endif %}

#sample pillar
#{{ service_name }}-elb:
#  boto_elb.present:
#    - name:
#    - availability_zones:
#      -
#    - security_groups:
#        -
#    - listeners:
#      - elb_port: 80
#        instance_port: 80
#        elb_protocol: TCP
#        instance_protocol: TCP
#      - elb_port: 443
#        instance_port: 443
#        elb_protocol: SSL
#        instance_protocol: SSL
#        certificate: ''
#    - health_check:
#        target: ''
#        interval: 30
#        timeout: 5
#        unhealthy_threshold: 2
#    - attributes:
#        cross_zone_load_balancing:
#          enabled: true
#        connection_draining:
#          enabled: true
#          timeout: 300