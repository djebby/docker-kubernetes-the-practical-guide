FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN mkdir tasks

RUN touch ./tasks/tasks.txt

EXPOSE 8000

CMD [ "node", "tasks-app.js" ]