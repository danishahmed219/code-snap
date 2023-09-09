# Use an alphine as base image
FROM node:17-alpine

# Container working directory
WORKDIR /app

# copying .json files into our directory
COPY package*.json ./

# installing all dependencies
RUN npm install

# copying entire project into container app directory
COPY . .

# port 3000 will be exposed from container
EXPOSE 3000

# Let's run the app
CMD [ "npm", "start" ]