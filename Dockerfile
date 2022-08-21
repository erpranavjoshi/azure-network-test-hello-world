FROM node:16-alpine
COPY hello.js .
CMD ["node", "hello.js"]
