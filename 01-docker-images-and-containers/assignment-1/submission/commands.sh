docker build ./python-app
docker build ./node-app

docker container run -it <python-app-image-hash>
docker container run -p 8000:3000 <node-app-image-hash>

docker run -it --name pythonapp <python-app-image-hash>
docker run --name nodeapp -p 8000:3000 <node-app-image-hash>

docker container rm <container-hashes...>
docker image rm <images-hashes...>

docker build -t bmi-app:1
docker build -t node-demo:latest ./node-app

docker container run -it --name bmiapp --rm bmi-app:1
docker container run -p 8000:3000 -d --name nodeapp --rm node-demo:latest
