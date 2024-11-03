
create new network
```shell
  docker network create goals-net
```

dockerize the mongodb database:
```shell
  docker container run --name mongodb --network goals-net -v goals-db:/data/db  -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=secret --rm -d mongo
```

dockerize the backend:
```shell
  docker container run --name goals-backend -p 80:80 --network goals-net -v /absolute/root/project/folder:/app -v logs:/app/logs -v /app/node_modules --rm -d goals-node
```

to run a react application inside a container we must use the -it flag.
```shell
  docker container run --name goals-frontend -v /absolute/root/project/folder/src:/app/src -p 3000:3000 --rm -it goals-react
```

