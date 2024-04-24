# Use the official Node.js 16 image as the base image
FROM node:16-alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app
RUN npm run build

# second build stage with nginx
FROM nginx:1.21-alpine

# Copy the built React app from the previous stage
COPY --from=builder /app/build /usr/share/nginx/html


# Expose the port that the app will run on (usually 3000 by default)
EXPOSE 80

# Start the React app when the container starts
CMD [ "nginx", "-g", "daemon off;" ]
