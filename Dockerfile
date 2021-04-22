FROM node:lts-alpine

WORKDIR /usr/app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD [ "yarn", "start" ]
