FROM node@sha256:fda98168118e5a8f4269efca4101ee51dd5c75c0fe56d8eb6fad80455c2f5827

RUN apk add --no-cache bash

RUN npm install -g @nestjs/cli

RUN sudo chmod -R 777 /home/node

RUN sudo mkdir /app/node_modules/

USER node

WORKDIR /home/node/app
