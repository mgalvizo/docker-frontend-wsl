# For production
# Multi step build
# Builder phase
FROM node:20.11-alpine3.18 as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
# Run phase
FROM nginx
# Copying from another phase
COPY --from=builder /app/dist /usr/share/nginx/html
#####################################################
# Build image
# docker build -t mgalvizo/docker-frontend-wsl:latest .
# Run image
# nginx default port is 80
# docker run -p 8080:80 mgalvizo/docker-frontend-wsl