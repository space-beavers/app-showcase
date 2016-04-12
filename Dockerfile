FROM nginx:stable-alpine

MAINTAINER Chris Saunders <slapheadted@gmail.com>

COPY . /code

RUN apk add --update nodejs

# INSTALL BOWER
RUN npm install -g bower@1.7.7

WORKDIR /usr/share/nginx

RUN npm install -g bower

RUN bower --allow-root install -g

#COPY ./dist /usr/share/nginx/html
