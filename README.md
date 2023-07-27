Contenedores Docker
========================

# Introdución

En este proyecto tenemos varios archivos YAML para contenedores.  El propósito que me ayude a futuro o que también es disponible a otro que necesitar hacer uso de ellos.

Contenedores:
1. MariaDB
2. Postgresql
3. Pgadmin
4. MongoDB
5. Oracle XE

Vamos a ejecutar los pasos para MariaDB, pero deberia funcionar perfectamente con los otros archivos YAML creados.

## Comando Docker
1.  Exportar una imagen de docker a archivo TAR

```
sudo docker save -o mariadb.tar mariadb`
```
2. Subir una imagen a Docker

```
docker load < mariadb.tar`
```
3. cambiar el dueño del archivo en Linux

```
sudo chown $USER:$USER mariadb.tar`
```
## Comando Docker-Compose

- [ ] Ejecutar el comando docker-compose para procesar un archivo YAML

Formato:
`docker-compose –f <nombre de archivo YAML> up -d`
Ejemplo:
```
sudo docker-compose -f postgres.yml up -d
```


- [ ]  borrar contenedor
Formato:

sudo docker container rm <nombre container>

Ejemplo:
```
sudo docker container rm postgres
```


- [ ]  Borrar volumes sin contenedores
` sudo docker volume prune`

- [ ]   Revisar contenedor
` sudo docker container inspect postgres `

## Estructura de un archivo YAML
- [ ]
version: '3.9'

#Indica que red utlizar ojo con el nombre -- redlocal --

## Acceder al container creado en Docker
Formato:
 - docker exec -i -t <id container o nombre container> /bin/bash 

Ejemplo

```
docker exec -i -t oracle-xe /bin/bash 
```
## nmap
Validar que puertos estan abiertos, 
```
nmap 10.72.0.11
```
Ejemplo de resultado al ejecutar comando


$ nmap 10.72.0.11
Starting Nmap 7.80 ( https://nmap.org ) at 2023-07-24 14:16 CST
Nmap scan report for 10.72.0.11
Host is up (0.00013s latency).
Not shown: 998 closed ports
PORT     STATE SERVICE
1521/tcp open  oracle
5500/tcp open  hotline

Nmap done: 1 IP address (1 host up) scanned in 0.14 seconds



