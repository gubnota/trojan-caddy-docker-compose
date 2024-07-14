FROM caddy:latest

# Install gettext for envsubst
RUN apk add --no-cache gettext

# Copy the Caddyfile template and startup script
COPY Caddyfile.template /etc/caddy/Caddyfile.template
COPY start-caddy.sh /start-caddy.sh
RUN chmod +x /start-caddy.sh

# Set the entrypoint to the startup script
ENTRYPOINT ["/start-caddy.sh"]
