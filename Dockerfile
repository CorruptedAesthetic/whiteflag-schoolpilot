FROM node:18

WORKDIR /app
COPY . .
RUN npm install serve -g
RUN npm ci
RUN npm run build

EXPOSE 3000
ENV NODE_ENV=production