FROM node:13.0.1-alpine

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=5000

ENV APP_HOME /nuxt_app

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

ADD package.json $APP_HOME/

RUN npm install

ADD . ${APP_HOME}


