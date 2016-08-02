Docker
======

# BUILD, SHIP, RUN

### O que é?
Projeto open-source que automatiza `deployments` de aplicações utilizando containers.
`"Docker containers wrap up a piece of software in a complete filesystem that contains everything
it needs to run: code, runtime, system tools, system libraries – anything you can install on a
server. This guarantees that it will always run the same, regardless of the environment it is
running in."`

#### Máquina física
OS -> Kernel, applicações compartilhando bibliotecas.

#### Máquina virtual
OS Host -> Kernel Host -> OS VM -> Diferentes Kernels VM, cada um com suas bibliotecas.

#### Container
OS -> Kernel compartilhado entre os containers

#### LXC
`"LXC (Linux Containers) is an operating-system-level virtualization method for running multiple
isolated Linux systems (containers) on a control host using a single Linux kernel."`

### cgroups
`"cgroups (abbreviated from control groups) is a Linux kernel feature that limits, accounts for,
and isolates the resource usage (CPU, memory, disk I/O, network, etc.) of a collection of
processes."`

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
$ docker inspect <container_id>
$ docker stats <container_id>
$ docker rm <container_id>
$ docker rmi <container_id>
```

#### nginx
```
$ docker run -i -t -p 8080:80 ubuntu /bin/bash

$$ apt-get install nginx
$$ ps -ef
$$ /etc/init.d/nginx start
$$ ps -ef
$$ netstat -atunp

$ docker ps
$ docker diff <container_id>
$ docker commit <container_id> fpgentil/ubuntu-nginx:1.0
$ docker images
$ docker run -it -p 6660:80 fpgentil/ubuntu-nginx:1.0 /bin/bash

$$ /etc/init.d/nginx start
$$ ps -ef
$$ tail -f /var/log/nginx/access.log

$ docker ps
$ docker stop <container_id>

$ docker exec <container_id> ps -ef
$ docker exec <container_id> /etc/init.d/nginx stop
```

#### Links
```
$ docker run --it -p 8080:80 --name web1 fpgentil/ubuntu-nginx:1.0 /bin/bash

$ docker run --it --name web2 --link web1:web1 fpgentil/ubuntu-nginx:1.0 /bin/bash
$$ /etc/init.d/nginx start
$$ ping web1
```

#### Dockerfile
```
$ mkdir apache
$ vim Dockerfile

  FROM ubuntu
  MAINTAINER cdigentil@gmail.com
  RUN apt-get update && apt-get install -y apache2 && apt-get clean

$ docker build . -t fpgentil/ubuntu-apache:1.0
$ docker images
$ docker run -it fpgentil/ubuntu-apache:1.0 /bin/bash
$$ ps -ef
$$ /etc/init.d/apache start
$$ ps -ef
$$ netstat -atunp
$$ ifconfig

$ curl <ip_container>
```

#### Docker Compose
```
$ docker-compose --version

  web:
    build: .
    command: bundle exec rails server -b 0.0.0.0
    ports:
      - "3000:3000"
    volumes:
      - .:/chronos
    volumes_from:
      - bundle
    links:
      - db:database
      - redis:redis

  sidekiq:
    image: chronos_web
    command: bundle exec sidekiq -C config/sidekiq.yml
    volumes:
      - .:/chronos
    volumes_from:
      - bundle
    links:
      - db:database
      - redis:redis

  bundle:
    image: chronos_web
    volumes:
      - /bundle

  redis:
    image: redis
    ports:
      - "6379:6379"

  db:
    image: wnameless/oracle-xe-11g
    ports:
      - "49161:1521"
      - "49160:22"
      - "8080:8080"
    volumes:
      - ./init.sql:/docker-entrypoint-initdb.d/init.sql

$ docker-compose scale web=4

$ docker-compose
Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pulls service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information
```
