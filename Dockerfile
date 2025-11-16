FROM node:20-alpine
WORKDIR app
COPY . .
RUN npm install
RUN npm audit fix --force
EXPOSE 8000
CMD ["npm","run","dev"]