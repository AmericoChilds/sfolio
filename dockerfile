FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=80
## init
EXPOSE 80

CMD ["npm", "start"]