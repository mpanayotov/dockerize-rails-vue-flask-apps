FROM node:12.4.0

RUN mkdir /todosapp

WORKDIR /todosapp

COPY package.json /todosapp
COPY yarn.lock /todosapp
RUN yarn install

COPY . /todosapp

CMD ["yarn", "serve"]