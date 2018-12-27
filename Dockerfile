FROM node:11.1.0-alpine

WORKDIR /usr/app/strapi
RUN npm install -g strapi@3.0.0-alpha.16
RUN strapi new my-project
RUN cd my-project

EXPOSE 1337
CMD [ "strapi","start" ]