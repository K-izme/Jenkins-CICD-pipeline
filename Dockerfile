FROM node:14

WORKDIR /app

#copy package and package lock
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5500

CMD ["npm", "run", "dev"]