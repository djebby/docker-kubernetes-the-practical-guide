FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=<value>
ENV MONGODB_PASSWORD=<value>
ENV MONGODB_URL=<value>
ENV MONGODB_DATABASE=<value>
CMD ["npm", "start"]