FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install n8n

CMD ["npx", "n8n"]
