# Lista redes
docker network list
# Crear una redlocal
docker network create --subnet=10.72.1.0/16 redlinux

# usar esta instruccion para los container
docker network create \
  --driver=bridge \
  --subnet=10.72.0.0/24 \
  --gateway=10.72.0.1 \
  --aux-address="my-router=10.72.0.254"  \
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