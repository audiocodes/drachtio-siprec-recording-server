FROM node:20.15.0-alpine3.20
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY . .
CMD [ "app.js" ]
