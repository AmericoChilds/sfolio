FROM node:lts-alpine

WORKDIR /app

COPY /server/package*.json ./

RUN npm install

COPY /server .

ENV PORT=80
## init
EXPOSE 80

CMD ["npm", "start"]