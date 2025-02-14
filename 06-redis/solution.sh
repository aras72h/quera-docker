docker run -d --name redis_pub redis
docker run -d --name redis_sub --link redis_pub redis redis-cli -h redis_pub subscribe channel quera_channel
docker exec redis_pub redis-cli publish quera_channel 'Yedone Re dare!'