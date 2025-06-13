FROM node:20
WORKDIR /urs

# first dot is wherre the application is, second dot is where you wanna send it
COPY package.json ./
RUN npm install

COPY . . 

EXPOSE 3000

# cmd runs after the container is up and running (everything above runs while the image is created)
CMD ["node", "index.js"]