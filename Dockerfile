#Optimised Dockerfile

FROM node

WORKDIR /app

COPY package.json /app

#no need to run npm install again if package.json doesn't change
RUN npm install

COPY . /app

#for information purpose only, doesn't execute
EXPOSE 80

CMD ["node", "server.js"]