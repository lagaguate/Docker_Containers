# Lista redes
docker network list
# Crear una redlocal
docker network create --subnet=10.75.0.0/16 redlinux

docker network create \
  --driver=bridge \
  --subnet=10.75.0.0/16 \
  --gateway=10.75.0.2 \
  redlinux