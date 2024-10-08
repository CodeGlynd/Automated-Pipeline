# Stage 1: Build the Vue.js app
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm install


COPY . .
RUN npm run build


# Stage 2: Serve the built app with Nginx
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]