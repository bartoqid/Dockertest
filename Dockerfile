FROM node:8.9.3-alpine
RUN mkdir -p /usr/src/app
RUN mkdir -p /twistlock
COPY ./app/ /usr/src/app/
WORKDIR /usr/src/app
RUN npm install
ENTRYPOINT [ "node", "/usr/src/app/index.js" ]