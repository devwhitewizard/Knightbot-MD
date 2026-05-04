FROM node:18-bullseye-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    imagemagick \
    webp \
    libc6 \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy package.json first to leverage Docker cache
COPY package.json .

# Use a memory-efficient install (omit dev dependencies)
RUN npm install --omit=dev --no-audit --no-fund

# Copy the rest of the application
COPY . .

# Environment variables
ENV PORT=3000
EXPOSE 3000

# Use optimized Node.js flags for memory management on Render (Free Tier: 512MB)
CMD ["node", "--max-old-space-size=450", "--optimize-for-size", "--gc-interval=100", "index.js"]
