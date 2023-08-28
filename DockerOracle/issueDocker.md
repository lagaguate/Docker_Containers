
#Error response from daemon: cannot stop container
1. sudo systemctl restart docker.service
sino funciona entonces
1. Enter the container : docker exec -it id_container /bin/bash
2. Inside the container just write: kill 1
3. Then write docker stop id_container And the problem might be solved
