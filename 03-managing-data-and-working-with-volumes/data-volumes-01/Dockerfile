FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# VOLUME [ "/app/feedback" ]

ARG DEFAULT_PORT=80

# ENV PORT 80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

CMD [ "npm", "start" ]

