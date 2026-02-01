# Start from a base image, which are published on Docker Hub
FROM node:alpine

# Copy program files to the container's working directory
# . means all files in the current directory
# in the container, we set /app as the working directory
COPY . /app

# Set the working directory
# all following commands will be executed in /app directory
WORKDIR /app

# Execute comands in the container
# Since app.js is in the working directory, we can run it directly
# this is equivalent to "node /app/app.js"
CMD node app.js

