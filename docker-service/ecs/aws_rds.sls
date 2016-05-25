% if 'services' in pillar %}
{%   for service_name in pillar['services'] %}
{%     if 'rds' in pillar['services'][service_name] %}
{{ pillar['services'][service_name]['rds'] }}
{%     endif %}
{%   endfor %}
{% endif %}

#sample pillar
#other rds options may appear here too if required
#
#mydb_subnet_group:
#  boto_rds.create_subnet_group:
#    - name:
#    - description:
#    - subnet_ids:
#    - tags:
#mydb:
#  boto_rds.create:
#    - name:
#    - allocated_storage:
#    - db_instance_class:
#    - engine:
#    - engine_version:
#    - db_security_groups:
#    - vpc_security_group_ids:
#    - db_subnet_group_name:
#    - character_set_name:
#    - ...
#