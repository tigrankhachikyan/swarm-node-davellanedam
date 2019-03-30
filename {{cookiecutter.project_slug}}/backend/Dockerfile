FROM node:11.1.0-alpine
ARG node_env=production

COPY . /usr/src/api/

ENV NODE_ENV=$node_env

WORKDIR /usr/src/api/node-express-mongodb-jwt-rest-api-skeleton

RUN npm install

CMD ["npm", "start"]

EXPOSE 3000
