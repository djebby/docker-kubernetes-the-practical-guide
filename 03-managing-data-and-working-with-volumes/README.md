
## VOLUMES

```
  volumes are folders on your host machine hard drive which are mounted into containers
  two types of external data storages:
    - Volumes (Managed by Docker) (have two types included in it also)
      - anonymous volumes
      - named volumes
    - Bind Mounts (Managed by you)
```

[docker volumes cli](https://docs.docker.com/reference/cli/docker/volume/)

List volumes
```shell
  docker volume ls
```


Remove all unused local volumes. Unused local volumes are those which are not referenced by any containers. By default, it only removes anonymous volumes.
```shell
  docker volume prune [OPTIONS]
```


Creates a new volume that containers can consume and store data in. If a name is not specified, Docker generates a random name.
```shell
  docker volume create [OPTIONS] [VOLUME]
```


Display detailed information on one or more volumes
```shell
  docker volume inspect [OPTIONS] VOLUME [VOLUME...]
```


### Examples 

named volumes + bind mounted volumes + anonymous volumes
```shell
  docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback -v $(pwd):/app/ -v /app/node_modules feedback-node:volumes
```

named volumes + bind mounted read-only volumes + anonymous volumes
```shell
  docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback -v $(pwd):/app:ro -v /app/temp -v /app/node_modules feedback-node:volumes
```

## ENV & ARG

### ENV

ENV key value in the Dockerfile means that the environment variables are set when the image is build.
[--env key=value or -e key=value or --env-file ./.env] in the docker run command means that the environment variables are set when the container is spinning.

--env examaple
```shell
  docker run -d -p 3000:8000 --env PORT=8000 --rm --name feedback-app -v feedback:/app/feedback -v $(pwd):/app:ro -v /app/temp -v /app/node_modules feedback-node:env
```
--env-file example
```shell
  docker run -d -p 3000:8000 --env-file ./.env --rm --name feedback-app -v feedback:/app/feedback -v $(pwd):/app:ro -v /app/temp -v /app/node_modules feedback-node:env
```

### ARG

Dockerfile
  ARG DEFAULT_PORT=80

```shell
  docker build -t feedback-node:dev --build-arg DEFAULT_PORT=8000 ./
```

so the --build-arg DEFAULT_PORT=8000 set the ARG DEFAULT_PORT inside the Dockerfile.

