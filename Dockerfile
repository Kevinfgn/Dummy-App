FROM node:20.19.0-alpine3.21
COPY . /app/
WORKDIR /app
RUN npm install
RUN addgroup app && adduser -S -G app app
USER app
