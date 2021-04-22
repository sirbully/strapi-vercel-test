FROM node:lts-alpine

WORKDIR /usr/app

COPY package.json package-lock.json ./

RUN npm ci --quiet

COPY . .

ENV NODE_ENV production

RUN yarn build

EXPOSE 1337

CMD [ "yarn", "start" ]
