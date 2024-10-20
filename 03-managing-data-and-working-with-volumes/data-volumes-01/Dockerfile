FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# VOLUME [ "/app/feedback" ]

EXPOSE 80

CMD [ "node", "server.js" ]

