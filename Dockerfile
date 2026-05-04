FROM node:18

# Install dependencies for media processing
RUN apt-get update && apt-get install -y \
    ffmpeg \
    imagemagick \
    webp \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy package files and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the default Render port
EXPOSE 3000
ENV PORT 3000

# Start the bot
CMD ["node", "index.js"]
