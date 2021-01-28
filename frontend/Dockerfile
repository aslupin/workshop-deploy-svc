FROM --platform=linux/amd64 node:15-alpine as builder
WORKDIR /usr/src/app

COPY package*.json ./
COPY src src/
COPY pubilc pubilc/
COPY .env ./

RUN npm ci
RUN npm run build

# Build stage
FROM node:15-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/build build/
RUN npm install -g serve

CMD serve  -p $PORT -s build