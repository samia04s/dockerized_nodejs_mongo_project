# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy all files
COPY . .

# Set environment variable
ENV PORT=6010
ENV MONGO_URI=mongodb://mongo:27110/mydatabase

# Expose port
EXPOSE 6010

# Start the app
CMD ["node", "server.js"]
