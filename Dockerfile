FROM node:18.18.1-alpine AS build

WORKDIR /app

COPY package*.json .

RUN npm install .

COPY . .

RUN npx @11ty/eleventy

FROM httpd:2.4

RUN sed -i 's/80/8080/g' /usr/local/apache2/conf/httpd.conf

RUN chmod 777 /usr/local/apache2/logs/

COPY --from=build /app/_site /usr/local/apache2/htdocs/

RUN chown -R www-data:www-data /usr/local/apache2/htdocs/
