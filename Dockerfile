FROM alpine

MAINTAINER Kennedy Oliveira <kennedy.oliveira@outlook.com>

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories
RUN echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories

# Updates the packages
RUN apk update && apk upgrade \
  && apk add ca-certificates openjdk8-jre-base@community \
  && rm -rf /var/cache/apk/*

# Run the script to update java cacerts, it should be runned by the image base, but for some reason its not running
RUN /etc/ca-certificates/update.d/java-cacerts