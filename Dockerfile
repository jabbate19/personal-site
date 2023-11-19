FROM node:18.18.1-alpine AS build

WORKDIR /app

COPY package*.json .

RUN npm install .

COPY . .

RUN npx @11ty/eleventy

FROM httpd:2.4

RUN sed -i 's/80/8080/g' /usr/local/apache2/conf/httpd.conf

COPY --from=build /app/_site /usr/local/apache2/htdocs/

