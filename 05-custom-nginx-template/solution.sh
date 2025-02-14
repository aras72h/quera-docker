docker pull nginx
docker run -d --name nginx_temp nginx
echo "Hello I'm Afsarpour Front Legend!" > index.html
docker container cp index.html nginx_temp:/usr/share/nginx/html/index.html
docker commit nginx_temp afsarpour_nginx
docker stop nginx_temp && docker rm nginx_temp
docker run -d --name afsarpour_web -p 8080:80 afsarpour_nginx