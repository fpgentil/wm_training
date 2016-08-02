Docker
======

# BUILD, SHIP, RUN

### O que é?

#### Máquina física
OS -> Kernel, applicações compartilhando bibliotecas.

#### Máquina virtual
OS Host -> Kernel Host -> OS VM -> Diferentes Kernels VM, cada um com suas bibliotecas.

#### Container
OS -> Kernel compartilhado entre os containers

#### LXC
Linux containers

#### Docker hub
* Repositório de imagens (https://hub.docker.com), registrar imagens ou utilizar imagens que estão
disponibilizadas, Ubuntu, CentOS, Ruby, Python, Redis, etc.

### Porque?
* Reduz o custo da infra e quantidade de  máquinas físicas, deploy muito mais rápido.
* Container de DEV -> QA -> STG -> PROD.

### Como?

#### Linux
```
$ curl -sSl https://get.docker.com | sh
$ /etc/init.d/docker.start
```

#### Mac / Windows
https://beta.docker.com

### Exemplos

#### Início
```
$ docker ps
$ docker images
$ docker pull ubuntu | $ docker run ubuntu -i -t ubuntu /bin/bash

----------------- Dentro do container ------------------
$ cat /etc/issue
$ ps -ef

(Linux) CTRL + D -> Mata o container
(Linux) CTRL + P + Q -> Mantém o container ativo
(Linux) $ docker attach <container_id>
--------------------------------------------------------

$ docker diff <container_id>
```

#### NGINX
```
$ docker run -i -t -p 8080:80 ubuntu /bin/bash

$$ apt-get install nginx
$$ ps -ef
$$ /etc/init.d/nginx start
$$ ps -ef
$$ netstat -atunp

$ docker ps
$ docker diff <container_id>
$ docker commit <container_id> fpgentil-ubuntu-nginx:1.0
$ docker images
$ docker run -it -p 6660:80 fpgentil-ubuntu-nginx:1.0 /bin/bash

$$ /etc/init.d/nginx start
$$ ps -ef
$$ tail -f /var/log/nginx/access.log

$ docker ps
$ docker stop <container_id>
```

### Leitura
