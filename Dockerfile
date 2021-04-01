FROM node:alpine
WORKDIR /app
COPY . . 
WORKDIR /app/server
RUN npm i
CMD npm run start