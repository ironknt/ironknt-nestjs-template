FROM node:alpine

WORKDIR /usr/src/app
COPY package.json ./

RUN yarn config set registry 'https://registry.npm.taobao.org' \
     && yarn && mkdir dist

COPY dist ./dist

EXPOSE 3000
CMD [ "node", "dist/main.js" ]
