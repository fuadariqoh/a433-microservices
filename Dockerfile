# Pull node dengan versi 14
FROM node:14

# Bekerja di directory app
WORKDIR /app

# copy all source code to /app
COPY . .

# define env variables
ENV NODE_ENV=production DB_HOST=item-db

# run npm install and then npm build
RUN npm install --production --unsafe-perm && npm run build

# expose this container on port 8080
EXPOSE 8080

# run npm start
CMD [ "npm","start" ]
