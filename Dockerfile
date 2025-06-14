FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy app source
COPY . .

# Create required directories
RUN mkdir -p uploads quarantine logs data

# Set environment variables
ENV NODE_ENV=production

# Expose port if needed (e.g., for web interface)
EXPOSE 3000

# Start the application
CMD [ "node", "src/index.js" ] 