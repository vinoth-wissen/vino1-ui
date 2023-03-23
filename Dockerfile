# Fetching the latest node image on apline linux
FROM node:lts-alpine

# Setting up the work directory
WORKDIR /frontend-react

# Installing dependencies
COPY ./package.json /frontend-react
RUN npm install

# Copying all the files in our project
COPY . .

# Starting our application
CMD npm start