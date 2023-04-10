FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev
ENV GEOCODER_API_KEY=AIzaSyBRSprjgKCvAYfgipckW7FYu6CQ_duMhGI
ENV API_KEY=123456s
ENV DATABASEURL=mongodb+srv://Saleh:Saleh12345@yelpcamp.xywzpzu.mongodb.net/camp?retryWrites=true&w=majority
ENV PASSPORT_SECRET=adminpwd
ENV ADMIN_CODE=1234pwd
ENV SECRET=your-secret-key
ENV PORT=8080
# Bundle app source
COPY . .

EXPOSE 3010
CMD [ "node", "app.js" ]
