#minimalistic instalation
FROM node

#set workdir
WORKDIR /app
COPY package*.json ./
USER root
RUN set -xe  \
    && npm install -g @quasar/cli
    # && rm -rf /vr/cache/apk/* /tmp/*
COPY ./src ./app
RUN quasar dev -p 8000

EXPOSE 8000
