
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


