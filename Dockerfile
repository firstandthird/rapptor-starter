FROM mhart/alpine-node:6.7

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app/
RUN npm install --quiet --production

COPY . /app

RUN npm run clientkit:prod

CMD ["npm", "start"]
