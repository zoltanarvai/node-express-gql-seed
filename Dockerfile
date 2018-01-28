FROM node:9.4.0-alpine

ENV PORT 3000
EXPOSE 3000

COPY package.json package.json
RUN npm install

COPY . .
RUN npm run tsc

CMD ["node", "dist/index.js"]
