FROM node:16

EXPOSE 8000

WORKDIR /usr/src/app

COPY . .
RUN npm install
RUN npm run build
RUN npm install -g serve
CMD ["serve", "-s", "-l", "8000", "build"]