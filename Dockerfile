FROM node:22-slim

WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm run build

CMD [ "npx", "next", "start" ]
