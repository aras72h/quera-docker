docker network create group1_net
docker network create group2_net
docker run -d --name redis_pub redis
docker network connect group1_net redis_pub
docker network connect group2_net redis_pub
docker run -d --name redis_sub_group1_1 --network group1_net redis
docker run -d --name redis_sub_group1_2 --network group1_net redis
docker run -d --name redis_sub_group2_1 --network group2_net redis
docker run -d --name redis_sub_group2_2 --network group2_net redis
docker exec redis_pub redis-cli PUBLISH quera_channel_group1 "Yedone Re dare!"
docker exec redis_pub redis-cli PUBLISH quera_channel_group2 "Abbas boaazar."