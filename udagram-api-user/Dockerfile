FROM node:14-alpine

RUN apk add --no-cache --virtual \
      builds-deps \
      build-base \
      python3

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied where available (npm@5+)
COPY package.json ./
COPY yarn.lock ./
RUN yarn && apk del builds-deps

# Bundle app source
COPY . .
EXPOSE 8080
CMD [ "yarn", "run", "prod" ]
