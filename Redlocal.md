# Lista redes
docker network list
# Crear una redlocal
docker network create --subnet=10.72.1.0/16 redlinux

# usar esta instruccion para los container
docker network create \
  --driver=bridge \
  --subnet=10.72.0.0/24 \
  --gateway=10.72.0.2 \
    redlocal

# usar esta instruccion para los container con macvlan
# 192.168.65.0/24

docker network create \
  --driver=macvlan \
  --subnet=10.72.0.0/24 \
  --gateway=10.72.0.2 \
  --opt parent=eth0  \
    redlocal    

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
  redlocal



  


  # Ip de la redlocal de containers
  # MariaDB --> 10.72.0.3
  # Postgres -- 10.72.0.5 
  # pgadmin --> 10.72.0.7
  # mongodb --> 10.72.0.9
  # Oracle xe --> 10.72.0.11
  # Oracle orcl --> 10.72.0.13
  # JasperReports --> 10.72.0.15
  # JR_Mariadb --> 10.72.0.17

  # sudo systemctl restart NetworkManager.service
  # systemctl status NetworkManager.service
  # ifconfig