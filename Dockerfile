# Dockerfile
FROM vikunja/vikunja:latest

USER root
RUN apk add --no-cache curl
