# pull official base image
FROM node:16.18-alpine3.16

# set working directory
WORKDIR /app


# install app dependencies
COPY . ./

RUN yarn

# add app
COPY . ./

EXPOSE 4000

# start app
CMD ["yarn", "dev"]