FROM node:v18.16.0 AS build

WORKDIR /usr/app

COPY . /usr/app

RUN npm install

RUN npm run build

FROM nginx:latest

LABEL maintainer="sriganesh"

COPY --from=build /usr/app/build /usr/share/nginx/html

