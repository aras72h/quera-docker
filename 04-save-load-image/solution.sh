docker pull --platform linux/amd64 alpine:latest
docker save -o alpine.tar alpine
docker load -i alpine.tar
docker run --rm --platform linux/amd64 alpine echo "Hello from Alipine!"