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



// yeah, right.. desselect this, yeah fine
/// the thing is how you wnt to build your image you've specified here in the dockerfile 
// now in the main.yml file; you're again specifying it. 
// from line number 11 to and before docker push / got it? 
/ let me fix it for you


so i should remove the extra declaration from main.yaml file?
//yeah right 
