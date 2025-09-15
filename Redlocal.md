# Lista redes
docker network list
# Crear una redlocal
docker network create --subnet=10.72.0.0/16 reddocker

# usar esta instruccion para los container
docker network create \
  --driver=bridge \
  --subnet=10.72.0.0/24 \
  --gateway=10.72.0.2 \
    reddocker

# usar esta instruccion para los container con macvlan
# 192.168.65.0/24

docker network create \
  --driver=macvlan \
  --subnet=10.72.0.0/24 \
  --gateway=10.72.0.2 \
  --opt parent=eth0  \
    reddocker    

# Crear red local agregar sudo si es necesario
docker network create \
  --driver=bridge \
  --subnet=10.72.0.0/24 \
  --gateway=10.72.0.2 \
  --opt com.docker.network.bridge.default_bridge=true \
  --opt com.docker.network.bridge.enable_icc=true \
  --opt com.docker.network.bridge.enable_ip_masquerade=true \
  --opt com.docker.network.bridge.host_binding_ipv4=0.0.0.0 \
  --opt com.docker.network.bridge.name=redlocal \
  --opt com.docker.network.driver.mtu=1500 \
  reddocker

# Conectar los contenedores a la reddocker
docker network connect --ip 10.72.0.10 reddocker docker_containers-redis-1
docker network connect --ip 10.72.0.15 reddocker postgres
docker network connect --ip 10.72.0.16 reddocker pgadmin
  


  # Ip de la redlocal de containers
  # Redis --> 10.72.0.10 
  # Postgres -- 10.72.0.15 
  # pgadmin --> 10.72.0.16

  # MariaDB --> 10.72.0.x
  # mongodb --> 10.72.0.x
  # Oracle xe --> 10.72.0.11
  # Oracle orcl --> 10.72.0.13
  # JasperReports --> 10.72.0.15
  # JR_Mariadb --> 10.72.0.17

  # sudo systemctl restart NetworkManager.service
  # systemctl status NetworkManager.service
  # ifconfig