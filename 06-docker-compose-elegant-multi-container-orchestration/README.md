
## Docker Compose

[documentation](https://docs.docker.com/reference/compose-file/)
[cli-documentation](https://docs.docker.com/reference/cli/docker/compose/)

multi docker builds and docker runs commands inside one configuration file.

In Docker Compose, there's no need for the --rm flag because, by default, containers started by Docker Compose are removed when they shut down with the ```docker compose down``` command.

In Docker Compose, there's no need to create a network for the services because, docker compose will create a network and add all the services to that network.


[Create and start containers](https://docs.docker.com/reference/cli/docker/compose/up/)
```shell
  docker compose up [OPTIONS] [SERVICE...]
```
--build		Build images before starting containers (we need it to rebuild the image if we have make some changes)

[Stop and remove containers, networks](https://docs.docker.com/reference/cli/docker/compose/down/)
```shell
  docker compose down [OPTIONS] [SERVICES]
```
-v, --volumes		Remove named volumes declared in the "volumes" section of the Compose file and anonymous volumes attached to containers


[Build or rebuild services](https://docs.docker.com/reference/cli/docker/compose/build/)
```shell
  docker compose build [OPTIONS] [SERVICE...]
```

[Run a one-off command on a service](https://docs.docker.com/reference/cli/docker/compose/run/)
```shell
  docker compose run [OPTIONS] SERVICE [COMMAND] [ARGS...]
```

