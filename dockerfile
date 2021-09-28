FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000
## init
EXPOSE 3000

CMD ["npm", "start"]