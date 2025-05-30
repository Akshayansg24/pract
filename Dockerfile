# Use official Node.js runtime as a parent image
FROM node:14
# Set working directory in the container
WORKDIR /usr/src/app
# Copy package.json and package-lock.json

COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application source code
COPY . .
# Expose port 3000
EXPOSE 3000
# Run the app when the container launches
CMD ["npm","start"]