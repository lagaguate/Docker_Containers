Contenedores Docker
========================

# Introdución

Vamos creado archivos YAML para crear contenedores en Docker, hasta el momento tenemos contenedores para:

1. MariaDB
2. Postgresql
3. Pgadmin
4. MongoDB

Vamos a ejecutar los pasos para MariaDB, pero deberia funcionar perfectamente con los otros archivos YAML creados.

##  Exportar una imagen archivo TAR
` sudo docker save -o mariadb.tar mariadb`
## Subir una imagen
`docker load < mariadb.tar`
## cambiar el dueño del archivo en Linux
`sudo chown $USER:$USER mariadb.tar`
## Docker-Compose

- [ ] Ejecutar el comando docker-compose para procesar un archivo YAML

`docker-compose –f <nombre de archivo YAML> up -d`

` sudo docker-compose -f postgres.yml up -d`

- [ ]  borrar contenedor
` sudo docker container rm postgres`

- [ ]  Borrar volumes sin contenedores
` sudo docker volume prune`

- [ ]   Revisar contenedor
` sudo docker container inspect postgres `

## Estructura de un archivo YAML
- [ ]
version: '3.9'

#Indica que red utlizar ojo con el nombre -- redlocal --

