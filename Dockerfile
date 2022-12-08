FROM node:latest

WORKDIR /app

RUN npm install -g contentful-cli

COPY package.json .
RUN npm install newrelic


COPY . .

USER node
EXPOSE 3000

CMD ["npm", "run", "start:dev"]
