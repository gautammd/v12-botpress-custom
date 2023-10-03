# Start with a Node image since Botpress is built on Node.js
FROM node:12

# Set the working directory inside the container
WORKDIR /botpress

# Copy local source code into the container
COPY . .

# Install required dependencies and build Botpress
RUN yarn cache clean
RUN yarn && yarn build

# Expose the port Botpress will run on
EXPOSE 3000

# Set the start command
CMD ["yarn start"]

