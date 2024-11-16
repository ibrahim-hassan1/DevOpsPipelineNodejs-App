# Use a Node.js image compatible with your project requirements
FROM node:20-bullseye-slim

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Install cross-env globally if needed
RUN npm install -g cross-env

# Copy the rest of the project files
COPY . .

# Build the project
RUN npm run build

# Expose the port your app will run on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]

