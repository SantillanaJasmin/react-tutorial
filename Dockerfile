FROM node:14-alpine

# Add a work directory
WORKDIR /my-app

# Cache and Install dependencies
COPY package.json ./
RUN npm install

# Copy app files
COPY . ./

# Expose port
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]