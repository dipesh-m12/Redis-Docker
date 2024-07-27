# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Install 'serve' globally to serve the built files
RUN npm install -g serve

# Set the command to run 'serve' to serve the static files from 'build' directory
CMD ["serve", "-s", "build"]

# Expose the port the app runs on
EXPOSE 3000
