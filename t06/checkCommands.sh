docker inspect bridge
docker inspect -f "{{ .HostConfig.Links }}" t06_nginx_1