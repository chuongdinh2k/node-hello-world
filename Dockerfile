# Use a Node.js base image
FROM node:16-buster-slim
ARG PORT
ENV PORT=${PORT}
ARG ENVIRONMENT
ENV ENVIRONMENT=${ENVIRONMENT}

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your Node.js app runs
EXPOSE ${PORT}

# Define the command to run your Node.js app with parameters
CMD npm run build && \ 
    PORT={$PORT} \
    ENVIROMENT={$ENVIROMENT} \
    npm start
