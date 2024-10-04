### Useful commands
```shell
  docker version
  docker info
```

### Common Commands:
```                                           
  run         Create and run a new container from an image     
  exec        Execute a command in a running container         
  ps          List containers                                  
  build       Build an image from a Dockerfile                 
  pull        Download an image from a registry                
  push        Upload an image to a registry                    
  images      List images                                      
  login       Log in to a registry                             
  logout      Log out from a registry                          
  search      Search Docker Hub for images                     
  version     Show the Docker version information              
  info        Display system-wide information                  
```

### Docker command format
  new management comands format:
  ```shell
    docker <command> <sub-command> (options)
  ```

  old way (still works):
  ```shell
    docker <command> (options)
  ```

  list of all containers
  ```shell
    docker container ls -a
  ```
  
  stop a docker container 
  ```shell
    docker container stop <hash>
  ```

  remove one or more containers
  ```shell
    docker container rm [OPTIONS] CONTAINER [CONTAINER...]
  ```
  
  remove all stopped containers
  ```shell
    docker container prune [OPTIONS]
  ```

  display the running processes of a container
  ```shell
    docker container top <container-name>
  ```

  display detailed information on one or more containers
  ```shell
    docker container inspect <container-name>
  ```

  display a live stream of container(s) resource usage statistics
  ```shell
    docker container stats <container-name>
  ```
  
  attach local standard input, output, and error streams to a running container
  ```shell
    docker container attach [OPTIONS] CONTAINER
  ```
  
  fetch the logs of a container
  ```shell
    docker container logs [OPTIONS] CONTAINER
  ```

  [docker container run](https://docs.docker.com/reference/cli/docker/container/run/)
  create and run a new container from an image
  ```shell
    docker container run [OPTIONS] IMAGE [COMMAND] [ARG...]
  ```
  
  create and run a new container that will be deleted when we stop it with help of --rm flag
  ```shell
    docker container run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=secret-password -d --rm postgres
  ```

  [docker container start](https://docs.docker.com/reference/cli/docker/container/start/)
  start one or more stopped containers
  ```shell
    docker container start [OPTIONS] CONTAINER [CONTAINER...]
    docker container start -ai CONTAINER [CONTAINER...]
  ```

  list port mappings or a specific mapping for the container
  ```shell
    docker container port CONTAINER [PRIVATE_PORT[/PROTO]]
  ```

  copy files/folders between a container and the local filesystem
  ```shell
    docker container cp [OPTIONS] CONTAINER:SRC_PATH DEST_PATH
  ```


  the docker buildx build command starts a build using BuildKit.
  -t, --tag	flag for name and optionally a tag (format: name:tag)
  ```shell
    docker buildx build [OPTIONS] PATH | URL | -
  ```


  remove one or more images
  ```shell
    docker image rm [OPTIONS] IMAGE [IMAGE...]
  ```
  
  display detailed information on one or more images
  ```shell
    docker image inspect [OPTIONS] IMAGE [IMAGE...]
  ```


  upload an image to a registry
  ```shell
    docker image push [OPTIONS] NAME[:TAG]
  ```
  

  download an image from a registry
  ```shell
    docker image pull [OPTIONS] NAME[:TAG|@DIGEST]
  ```

  create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  ```shell
    docker image tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
  ```



  Lists all the networks the Engine daemon knows about. This includes the networks that span across multiple hosts in a cluster.
  ```shell
    docker network ls [OPTIONS]
  ```

  creates a new network.
  ```shell
    docker network create [OPTIONS] NETWORK
  ```
  
  connect a container to a network
  ```shell
    docker network connect [OPTIONS] NETWORK CONTAINER
  ```


RUN vs CMD:
  RUN will executed when the image is created.
  CMD will not executed when the image is created, but when a container is started based on the image.
