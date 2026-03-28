FROM node:25.8.1-bookworm

RUN apt-get update \
    && apt-get install -y bash \
    && npm install -g create-vite@5.2.0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace