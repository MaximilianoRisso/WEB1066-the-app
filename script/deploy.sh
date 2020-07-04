  #!/usr/bin/env bash
set -e
bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_USERNAME}\" --password-stdin"

docker tag zutherb/monolithic-shop:latest amine710-info/monolithic_shop:latest
docker push $DOCKER_USERNAME/monolithic-shop:latest
echo "ok"