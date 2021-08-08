FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 8080


CMD ["npm", "run build"]
CMD ["node", "build/server.js"]
