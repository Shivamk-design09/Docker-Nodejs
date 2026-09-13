FROM ubuntu


# Process of installing nodejs on ubuntu machine
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs


# Copying the file in container
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

RUN npm install

# when this image is run 
# this code is executes
ENTRYPOINT ['node', 'main.js']

# this is done
# Image is created
# -t => tag

# It will create a final Image and then we can create an Image