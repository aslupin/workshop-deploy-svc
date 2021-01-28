FROM --platform=linux/amd64 node:15-alpine

WORKDIR /usr/src/app

COPY *.json ./
RUN npm install -g json-server 

CMD json-server --watch google-maps-response.json --port $PORT --host 0.0.0.0