## Networking, Cross-Container Communication

[docker network cli references](https://docs.docker.com/reference/cli/docker/network/)

Creates a new network.
```shell
  docker network create [OPTIONS] NETWORK
```

### Container to Local Host Machine Communication
  for docker container to local machine communication we should use 
  ```host.docker.internal```
  instead of localhost to refer to the local host machine.

### Container to Container Communication
  1 - we can use the ip address of the container to communicate with it.
  2 - if the two containers are within the same network we can just write
      the name of the container to communicate with it.


  we must run the container with the --network [network-name] flag to specify the to wich network this container should belong
  ```shell
    docker run -d --name mongodb --network favorites-net mongo
    docker run --name favorites --network favorites-net -d --rm -p 3000:3000 favorites-node
  ```

