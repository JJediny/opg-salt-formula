#anatomy of an ecs service.
# elb is required for managing location of container in cluster, although consul can provide provides the same service via DNS/consul agent
# elb is required for load balanced access and external access
# task definition -> json format from template
# service definition -> aws resource
# persistent data dirs -> create dirs and deliver config from templates.

#include:
#  - .ecs.aws_rds
#  - .ecs.aws_elb
#  - .ecs.aws_service
#  - .ecs.aws_task
#  - .ecs.aws_dns

