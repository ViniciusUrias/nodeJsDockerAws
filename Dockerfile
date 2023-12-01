# Use an official Node.js runtime as a parent image
FROM node:16.13.1-alpine

# The /app directory should act as the main application directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY app ./

# Expose the port for the Express app
EXPOSE 3000

# Command to run the Express app with nodemon
CMD ["npm", "start"]
