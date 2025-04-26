# Build stage: just to get wget
FROM alpine:latest AS builder
RUN apk add --no-cache wget

# Final stage: start from official vikunja image
FROM vikunja/vikunja:latest

# Copy wget into final image
COPY --from=builder /usr/bin/wget /usr/bin/wget
