FROM busybox

WORKDIR /home/static

# Copy static files
COPY src/ ./

# Create a user without privileges
RUN adduser -D static

# Run web server in foreground
ENTRYPOINT ["httpd", "-v", "-f"]

# Add a healthcheck
HEALTHCHECK CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1