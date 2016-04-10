FROM nginx

MAINTAINER Chris Saunders <slapheadted@gmail.com>

COPY ./dist /usr/share/nginx/html
