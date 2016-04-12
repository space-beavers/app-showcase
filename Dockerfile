FROM nginx

MAINTAINER Chris Saunders <slapheadted@gmail.com>

COPY . /code

# Installation
RUN curl -sL https://deb.nodesource.com/setup | bash -

WORKDIR /usr/share/nginx
RUN npm install npm -g
RUN npm install -g bower

RUN bower --allow-root install -g

#COPY ./dist /usr/share/nginx/html
