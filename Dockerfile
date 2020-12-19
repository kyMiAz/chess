FROM alpine
LABEL maintainer="1151807762@qq.com"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src
RUN npm install
EXPOSE 5000
ENTRYPOINT ["node", "./chess.js"]
