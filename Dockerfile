# Use an alphine as base image
FROM alpine:3.17

# Container working directory
WORKDIR /app

# copying .json files into our directory
COPY /app/package*.json ./

# installing all dependencies
RUN npm install

# copying entire project into container app directory
COPY /app .

# Let's run the app
CMD [ "npm", "start" ]

# port 3000 will be exposed from container
EXPOSE 3000



