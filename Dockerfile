# Build stage: install both wget and curl
FROM alpine:latest AS builder
RUN apk add --no-cache wget curl

# Final stage: start from official vikunja image
FROM vikunja/vikunja:latest

# Copy wget and curl from the builder image into the final image
COPY --from=builder /usr/bin/wget /usr/bin/wget
COPY --from=builder /usr/bin/curl /usr/bin/curl
