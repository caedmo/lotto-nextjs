FROM node:12

ENV PORT 3300

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Installing dependencies
COPY . /app
RUN npm install

# Building app
RUN npm run build
EXPOSE 3300

# Running the app
CMD "npm" "run" "dev"