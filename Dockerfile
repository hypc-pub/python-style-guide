FROM hypc/gitbook:3.2.3-alpine as build-app

WORKDIR /app
COPY book.json /app/book.json
RUN gitbook install

ADD . /app
RUN gitbook build

FROM nginx:alpine

COPY --from=build-app /app/_book /usr/share/nginx/html
