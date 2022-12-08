FROM node:latest

WORKDIR /app

RUN npm install -g contentful-cli

COPY package.json .
RUN npm install newrelic
ENV NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY

ENV NEW_RELIC_APP_NAME=$NEW_RELIC_APP_NAME


COPY . .

USER node
EXPOSE 3000

CMD ["npm", "run", "start:dev"]

