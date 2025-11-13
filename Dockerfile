FROM node:25-alpine

ENV MONGO_DB_USERNAME=manh \
    MONGO_DB_PWD=manh

RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

RUN npm install

CMD ["node", "server.js"]