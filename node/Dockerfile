FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy app source code
COPY server.js .

# Install dependencies
RUN npm install express

# Expose the port the app runs on
EXPOSE 3000

# Run the app
CMD [ "node", "server.js" ]
