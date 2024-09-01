# Stage 1: Install dependencies
FROM node:alpine AS build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

# Stage 2: Copy files and run the application
FROM node:alpine
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]