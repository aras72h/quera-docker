docker pull memcached:latest
docker tag memcached:latest localhost:5001/memcached:latest
docker push localhost:5001/memcached:latest
docker image prune -a
docker pull localhost:5001/memcached:latest
docker run -d --name memcached_instance -p 11211:11211 localhost:5001/memcached:latest