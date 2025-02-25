docker network disconnect project_backend rabbitmq
docker network disconnect project_backend nginx
docker network rm project_backend
docker network create project_backend
docker network disconnect project_frontend rabbitmq
docker network disconnect project_internal rabbitmq
docker network connect project_backend app
docker network connect project_frontend nginx
docker network disconnect project_internal app
docker network rm project_internal