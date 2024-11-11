run node repl mode inside a container:
```shell
  docker container run -it node
```

we can also run it with detached mode with -d flag:
```shell
  docker container run -it -d node
```

we can also override the default executed repl mode
```shell
  docker container run -it node npm init
```

[docker container exec](https://docs.docker.com/reference/cli/docker/container/exec/)

Execute a command in a running container 
```shell
  docker container exec [OPTIONS] CONTAINER COMMAND [ARG...]
```

examples:
```shell
  docker container exec -it trusting_lovelace npm init
  docker container exec -it trusting_lovelace ls
```


using bind mounted volumes
```shell
  docker container run -it -v /home/djef/Documents/docker-kubernetes-the-practical-guide/07-utility-containers:/app [IMAGE] [COMMAND]
```

utilizing of entrypoint to restrict the commands that we want to execute inside of the container:
Dockerfile: ```ENTRYPOINT [ "executable" ]```


example
  inside the docker file we define an ENTRYPOINT:
  ```ENTRYPOINT [ "npm" ]```
  run the container:
  ```shell
    docker container run -it -v /home/djef/Documents/docker-kubernetes-the-practical-guide/07-utility-containers:/app mynpm init -y
    docker container run -it -v /home/djef/Documents/docker-kubernetes-the-practical-guide/07-utility-containers:/app mynpm install express
  ```

using of docker compose:
```shell
  docker compose run options service-name executable
  docker compose run --rm npm install -D nodemon
```


important notice:
  if a docker file containes a CMD [ "executable" ] layer
  and we try to run an container based on an image built with that file
  ```shell 
    docker container run -it node-util npm init
  ```
  => the ```npm init``` will override the ```CMD [ "executable" ]``` command inside the docker file.

about permissions and linux of utility containers: https://www.udemy.com/course/docker-kubernetes-the-practical-guide/learn/#questions/12977214/