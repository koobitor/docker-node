FROM node:alpine

# Install bash
RUN apk update \
  && apk upgrade \
  && apk add bash \
  && apk add --no-cache tzdata
ENV TZ=Asia/Bangkok


# Create app directory
WORKDIR /home/node

# Install app dependencies
COPY ./app .
RUN yarn install

EXPOSE 3000
CMD [ "yarn", "start" ]
