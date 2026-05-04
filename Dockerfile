FROM node:18

# Install system dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    imagemagick \
    webp \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy package.json first to leverage Docker cache
COPY package.json .

# Memory-efficient install
RUN npm install --omit=dev --no-audit --no-fund

# Copy the rest of the application
COPY . .

# Environment variables
ENV PORT=3000
EXPOSE 3000

# Start the bot
CMD ["node", "index.js"]
