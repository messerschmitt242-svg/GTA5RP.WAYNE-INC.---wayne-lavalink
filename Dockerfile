FROM ghcr.io/lavalink-devs/lavalink:4.2.2-alpine

USER root
RUN apk add --no-cache ffmpeg
USER lavalink

ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -XX:+UseG1GC -XX:MaxGCPauseMillis=50"

COPY application.yml /opt/Lavalink/application.yml
