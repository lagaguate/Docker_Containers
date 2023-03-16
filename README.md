# Exportar una imagen archivo TAR
- sudo docker save -o mariadb.tar mariadb
# subir una imagen
- docker load < mariadb.tar
# cambiar el dueño del archivo en Linux
- sudo chown $USER:$USER mariadb.tar

# Parametrso creacion de Docker Desktop
## Volumen

mariadb: /var/lib/mysql

## Enviroment variables

networks: redlocal
ipv4_address: 10.72.0.3
MYSQL_ROOT_PASSWORD = MasterHunter*1972

docker run --net redlocal --ip 10.72.0.3 -d mariadb -n mariadb