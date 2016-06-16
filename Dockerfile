# DOCKER-VERSION 1.0
FROM    ubuntu:latest
#
# Install nodejs npm
#
RUN apt-get update
RUN apt-get install -y nodejs npm

#
# add application sources
#
#RUN mkdir -p /app
COPY . /app
RUN cd /app; npm install
#
# Expose the default port
#
EXPOSE  3000
#
# Start command
#
CMD ["node", "/app/app.js"]
