# Use an official Node runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the app for production
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Install serve to run the application
RUN npm install -g serve

# Specify the command to run the app
CMD ["serve", "-s", "build", "-l", "3000"]
