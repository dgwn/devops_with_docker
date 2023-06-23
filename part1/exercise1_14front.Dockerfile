FROM node:16

EXPOSE 5001

WORKDIR /usr/src/app
ENV REACT_APP_BACKEND_URL=http://localhost:8000

COPY . .
RUN npm install
RUN npm run build
RUN npm install -g serve
CMD ["serve", "-s", "-l", "5001", "build"]