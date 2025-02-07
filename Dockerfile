# Use Node.js as the base image
FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files (package.json and package-lock.json) to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install                     # shell form

# Copy all files from the current directory into the container
COPY . .

# Set an environment variable PORT with the value 8080
ENV PORT=8080

# Expose port 8080 for external access to the container
EXPOSE 8080

# Specify the command to run the application
CMD ["node", "src/index.js"]        # exec form, preffered 