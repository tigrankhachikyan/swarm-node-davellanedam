FROM node:11.1.0-alpine
ARG node_env=production

COPY . /usr/src/api/

ENV NODE_ENV=$node_env

WORKDIR /usr/src/api/
RUN npm install pm2 -g \
    && npm install nodemon -g

RUN npm install

CMD ["npm", "start"]

EXPOSE 3000
