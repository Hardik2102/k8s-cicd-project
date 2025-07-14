# Use the official Node.js 18 image (alpine for smaller footprint)
FROM node:18-alpine

# Create & set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of your application code
COPY . .

# If your app listens on a different port, change 3000 here
EXPOSE 3000

# Start the app; make sure your package.json has a "start" script
CMD ["npm", "start"]
