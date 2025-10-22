FROM node:25-alpine
COPY hello.js .
CMD ["node", "hello.js"]
