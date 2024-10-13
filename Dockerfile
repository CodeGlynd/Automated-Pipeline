# Stage 1: Build Vue.js app
FROM node:18-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 to make the app accessible
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
