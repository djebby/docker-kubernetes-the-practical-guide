```shell
  docker build -t node-dep-example ./
```

```shell
  docker container run -d --rm --name node-dep -p 80:80 node-dep-example
```

Cluster > Services > Tasks > Container

Tasks can include more than one container.


## MULTI-STAGE BUILDS

with one docker file we can do multiple build / setup steps ("stages")
every "FROM" instruction creates a new stage in our Dockerfile.
even if we use the same image as in the previous step.

to use a specific Dockerfile
```shell
  docker build -f ./Dockerfile.prod -t djebby/goals-react ./
```
